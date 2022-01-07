
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ port_t ;
struct TYPE_5__ {int num; long oscfreq; int type; TYPE_2__* board; void* port; } ;
typedef TYPE_1__ cx_chan_t ;
struct TYPE_6__ {int num; int irq; int dma; int bcr0; int bcr0b; scalar_t__ nsync; scalar_t__ nuniv; scalar_t__ nasync; TYPE_1__* chan; int name; scalar_t__ bcr1b; scalar_t__ bcr1; int type; int opt; scalar_t__ port; } ;
typedef TYPE_2__ cx_board_t ;


 int B_SIGMA_800 ;
 void* CS0 (scalar_t__) ;
 void* CS1 (scalar_t__) ;
 void* CS1A (scalar_t__) ;
 int NCHAN ;

 int T_NONE ;







 int board_opt_dflt ;
 scalar_t__ cx_probe_chip (void*) ;
 int cx_reinit_board (TYPE_2__*) ;
 int* dmamask ;
 int* irqmask ;
 int strcat (int ,char*) ;
 int strcpy (int ,char*) ;

void cx_init_800 (cx_board_t *b, int num, port_t port, int irq, int dma,
 int chain)
{
 cx_chan_t *c;
 int i;


 b->port = port;
 b->num = num;
 b->irq = irq;
 b->dma = dma;
 b->opt = board_opt_dflt;
 b->type = B_SIGMA_800;


 b->bcr0 = b->bcr0b = dmamask[b->dma] | irqmask[b->irq];


 b->bcr1 = b->bcr1b = 0;

 strcpy (b->name, "800");
 if (chain)
  strcat (b->name, "/800");


 for (i=0; i<4; ++i) {
  b->chan[i+0].port = CS0(port);
  b->chan[i+4].port = cx_probe_chip (CS1A(port)) ?
   CS1A(port) : CS1(port);
  b->chan[i+8].port = CS0(port+0x10);
  b->chan[i+12].port = CS1(port+0x10);
 }
 for (c=b->chan; c<b->chan+NCHAN; ++c) {
  c->board = b;
  c->num = c - b->chan;
  c->oscfreq = 33000000L;
  c->type = (c->num < 8 || chain) ? 130 : T_NONE;
 }

 b->nuniv = b->nsync = b->nasync = 0;
 for (c=b->chan; c<b->chan+NCHAN; ++c)
  switch (c->type) {
  case 135: ++b->nasync; break;
  case 131:
  case 130:
  case 129:
  case 128: ++b->nuniv; break;
  case 134:
  case 132:
  case 133: ++b->nsync; break;
  }

 cx_reinit_board (b);
}
