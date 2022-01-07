
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ port_t ;
struct TYPE_5__ {long oscfreq; int num; int type; TYPE_2__* board; void* port; } ;
typedef TYPE_1__ cx_chan_t ;
struct TYPE_6__ {int num; int irq; int dma; int bcr0; int bcr0b; scalar_t__ nsync; scalar_t__ nuniv; scalar_t__ nasync; TYPE_1__* chan; int name; scalar_t__ bcr1b; scalar_t__ bcr1; int if8type; int if0type; int type; int opt; scalar_t__ port; } ;
typedef TYPE_2__ cx_board_t ;


 int BCR0_NORESET ;


 int B_SIGMA_XXX ;
 void* CS0 (scalar_t__) ;
 void* CS1 (scalar_t__) ;
 void* CS1A (scalar_t__) ;
 int NCHAN ;

 int T_NONE ;







 int board_opt_dflt ;
 int cx_iftype ;
 scalar_t__ cx_probe_chip (void*) ;
 int cx_reinit_board (TYPE_2__*) ;
 int* dmamask ;
 int* irqmask ;
 int strcat (int ,char*) ;
 int strcpy (int ,char*) ;

void cx_init_board (cx_board_t *b, int num, port_t port, int irq, int dma,
 int chain, int rev, int osc, int mod, int rev2, int osc2, int mod2)
{
 cx_chan_t *c;
 char *type;
 int i;


 b->port = port;
 b->num = num;
 b->irq = irq;
 b->dma = dma;
 b->opt = board_opt_dflt;

 b->type = B_SIGMA_XXX;
 b->if0type = b->if8type = cx_iftype;


 b->bcr0 = b->bcr0b = BCR0_NORESET | dmamask[b->dma] | irqmask[b->irq];


 b->bcr1 = b->bcr1b = 0;




 strcpy (b->name, mod ? "m" : "");
 switch (rev) {
 default: type = ""; break;
 case 150: type = "100"; break;
 case 149: type = "400"; break;
 case 142: type = "500"; break;
 case 145: type = "410"; break;
 case 138: type = "810"; break;
 case 144: type = "410s"; break;
 case 137: type = "810s"; break;
 case 143: type = "440"; break;
 case 136: type = "840"; break;
 case 148: type = "401"; break;
 case 140: type = "801"; break;
 case 147: type = "401s"; break;
 case 139: type = "801s"; break;
 case 146: type = "404"; break;
 case 141: type = "703"; break;
 }
 strcat (b->name, type);

 switch (osc) {
 default:
 case 151:
  b->chan[0].oscfreq = b->chan[1].oscfreq =
  b->chan[2].oscfreq = b->chan[3].oscfreq =
  b->chan[4].oscfreq = b->chan[5].oscfreq =
  b->chan[6].oscfreq = b->chan[7].oscfreq =
   mod ? 33000000L : 20000000L;
  strcat (b->name, "a");
  break;
 case 152:
  b->chan[0].oscfreq = b->chan[1].oscfreq =
  b->chan[2].oscfreq = b->chan[3].oscfreq =
  b->chan[4].oscfreq = b->chan[5].oscfreq =
  b->chan[6].oscfreq = b->chan[7].oscfreq =
   mod ? 20000000L : 18432000L;
  strcat (b->name, "b");
  break;
 }



 if (chain) {

  strcat (b->name, mod2 ? "/m" : "/");
  switch (rev2) {
  default: type = ""; break;
  case 150: type = "100"; break;
  case 149: type = "400"; break;
  case 142: type = "500"; break;
  case 145: type = "410"; break;
  case 138: type = "810"; break;
  case 144: type = "410s"; break;
  case 137: type = "810s"; break;
  case 143: type = "440"; break;
  case 136: type = "840"; break;
  case 148: type = "401"; break;
  case 140: type = "801"; break;
  case 147: type = "401s"; break;
  case 139: type = "801s"; break;
  case 146: type = "404"; break;
  case 141: type = "703"; break;
  }
  strcat (b->name, type);

  switch (osc2) {
  default:
  case 151:
   b->chan[8].oscfreq = b->chan[9].oscfreq =
   b->chan[10].oscfreq = b->chan[11].oscfreq =
   b->chan[12].oscfreq = b->chan[13].oscfreq =
   b->chan[14].oscfreq = b->chan[15].oscfreq =
    mod2 ? 33000000L : 20000000L;
   strcat (b->name, "a");
   break;
  case 152:
   b->chan[8].oscfreq = b->chan[9].oscfreq =
   b->chan[10].oscfreq = b->chan[11].oscfreq =
   b->chan[12].oscfreq = b->chan[13].oscfreq =
   b->chan[14].oscfreq = b->chan[15].oscfreq =
    mod2 ? 20000000L : 18432000L;
   strcat (b->name, "b");
   break;
  }
 }


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
  c->type = T_NONE;
 }



 switch (rev) {
 case 149:
  for (i=4; i<8; ++i)
   b->chan[i].type = 130;
  break;
 case 150:
  b->chan[0].type = 130;
  break;
 case 142:
  b->chan[0].type = 130;
  for (i=4; i<8; ++i)
   b->chan[i].type = 130;
  break;
 case 145:
  b->chan[0].type = 128;
  for (i=1; i<4; ++i)
   b->chan[i].type = 130;
  break;
 case 138:
  b->chan[0].type = 128;
  for (i=1; i<8; ++i)
   b->chan[i].type = 130;
  break;
 case 144:
  b->chan[0].type = 128;
  for (i=1; i<4; ++i)
   b->chan[i].type = 134;
  break;
 case 137:
  b->chan[0].type = 128;
  for (i=1; i<4; ++i)
   b->chan[i].type = 134;
  for (i=4; i<8; ++i)
   b->chan[i].type = 130;
  break;
 case 143:
  b->chan[0].type = 128;
  for (i=1; i<4; ++i)
   b->chan[i].type = 132;
  break;
 case 136:
  b->chan[0].type = 128;
  for (i=1; i<4; ++i)
   b->chan[i].type = 132;
  for (i=4; i<8; ++i)
   b->chan[i].type = 130;
  break;
 case 148:
  b->chan[0].type = 129;
  for (i=1; i<4; ++i)
   b->chan[i].type = 130;
  break;
 case 140:
  b->chan[0].type = 129;
  for (i=1; i<8; ++i)
   b->chan[i].type = 130;
  break;
 case 147:
  b->chan[0].type = 129;
  for (i=1; i<4; ++i)
   b->chan[i].type = 134;
  break;
 case 139:
  b->chan[0].type = 129;
  for (i=1; i<4; ++i)
   b->chan[i].type = 134;
  for (i=4; i<8; ++i)
   b->chan[i].type = 130;
  break;
 case 146:
  b->chan[0].type = 129;
  for (i=1; i<4; ++i)
   b->chan[i].type = 133;
  break;
 case 141:
  b->chan[0].type = 129;
  for (i=1; i<3; ++i)
   b->chan[i].type = 133;
  for (i=4; i<8; ++i)
   b->chan[i].type = 130;
  break;
 }



 if (chain) {
  switch (rev2) {
  case 149:
   break;
  case 150:
   b->chan[8].type = 130;
   break;
  case 142:
   b->chan[8].type = 130;
   for (i=12; i<16; ++i)
    b->chan[i].type = 130;
   break;
  case 145:
   b->chan[8].type = 128;
   for (i=9; i<12; ++i)
    b->chan[i].type = 130;
   break;
  case 138:
   b->chan[8].type = 128;
   for (i=9; i<16; ++i)
    b->chan[i].type = 130;
   break;
  case 144:
   b->chan[8].type = 128;
   for (i=9; i<12; ++i)
    b->chan[i].type = 134;
   break;
  case 137:
   b->chan[8].type = 128;
   for (i=9; i<12; ++i)
    b->chan[i].type = 134;
   for (i=12; i<16; ++i)
    b->chan[i].type = 130;
   break;
  case 143:
   b->chan[8].type = 128;
   for (i=9; i<12; ++i)
    b->chan[i].type = 132;
   break;
  case 136:
   b->chan[8].type = 128;
   for (i=9; i<12; ++i)
    b->chan[i].type = 132;
   for (i=12; i<16; ++i)
    b->chan[i].type = 130;
   break;
  case 148:
   b->chan[8].type = 129;
   for (i=9; i<12; ++i)
    b->chan[i].type = 130;
   break;
  case 140:
   b->chan[8].type = 129;
   for (i=9; i<16; ++i)
    b->chan[i].type = 130;
   break;
  case 147:
   b->chan[8].type = 129;
   for (i=9; i<12; ++i)
    b->chan[i].type = 130;
   break;
  case 139:
   b->chan[8].type = 129;
   for (i=9; i<12; ++i)
    b->chan[i].type = 134;
   for (i=12; i<16; ++i)
    b->chan[i].type = 130;
   break;
  case 146:
   b->chan[8].type = 129;
   for (i=9; i<12; ++i)
    b->chan[i].type = 133;
   break;
  case 141:
   b->chan[8].type = 129;
   for (i=9; i<11; ++i)
    b->chan[i].type = 133;
   for (i=12; i<16; ++i)
    b->chan[i].type = 130;
   break;
  }
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
