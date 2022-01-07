
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int port_t ;
struct TYPE_6__ {scalar_t__ call_on_err; scalar_t__ call_on_msig; scalar_t__ call_on_rx; scalar_t__ call_on_tx; } ;
typedef TYPE_1__ cx_chan_t ;
struct TYPE_7__ {TYPE_1__* chan; } ;
typedef TYPE_2__ cx_board_t ;


 int NBRD ;
 int NCHAN ;
 int csigma_fw_data ;
 int csigma_fw_len ;
 int csigma_fw_tvec ;
 int cx_init (TYPE_2__*,int,int ,int,int) ;
 int cx_probe_board (int ,int,int) ;
 int cx_setup_board (TYPE_2__*,int ,int ,int ) ;

int cx_open_board (cx_board_t *b, int num, port_t port, int irq, int dma)
{
 cx_chan_t *c;

 if (num >= NBRD || ! cx_probe_board (port, irq, dma))
  return 0;


 for (c=b->chan; c<b->chan+NCHAN; ++c) {
  c->call_on_tx = 0;
  c->call_on_rx = 0;
  c->call_on_msig = 0;
  c->call_on_err = 0;
 }

 cx_init (b, num, port, irq, dma);


 if (! cx_setup_board (b, csigma_fw_data, csigma_fw_len, csigma_fw_tvec))
  return 0;
 return 1;
}
