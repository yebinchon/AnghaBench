
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int port_t ;
struct TYPE_6__ {int sccrx_empty; int scctx_empty; int e1_first_int; scalar_t__ scctx_e; scalar_t__ scctx_b; scalar_t__ sccrx_e; scalar_t__ sccrx_b; scalar_t__ call_on_err; scalar_t__ call_on_scc; scalar_t__ call_on_msig; scalar_t__ call_on_rx; scalar_t__ call_on_tx; } ;
typedef TYPE_1__ ct_chan_t ;
struct TYPE_7__ {int type; TYPE_1__* chan; } ;
typedef TYPE_2__ ct_board_t ;
typedef int cr_dat_tst_t ;
 int NBRD ;
 int NCHAN ;
 int ct_init (TYPE_2__*,int,int ,int,int,unsigned char*,long,int *,unsigned char*) ;
 int ct_probe_board (int ,int,int) ;
 int ct_setup_board (TYPE_2__*,unsigned char const*,long,int const*) ;
 unsigned char* ctau2_fw_data ;
 unsigned char* ctau_fw_data ;
 long ctau_fw_len ;
 int * ctau_fw_tvec ;
 unsigned char* ctaue1_fw_data ;
 long ctaue1_fw_len ;
 int * ctaue1_fw_tvec ;
 unsigned char* ctaug703_fw_data ;
 long ctaug703_fw_len ;
 int * ctaug703_fw_tvec ;

int ct_open_board (ct_board_t *b, int num, port_t port, int irq, int dma)
{
 ct_chan_t *c;
 const unsigned char *fw;
 const cr_dat_tst_t *ft;
 long flen;

 if (num >= NBRD || ! ct_probe_board (port, irq, dma))
  return 0;


 for (c=b->chan; c<b->chan+NCHAN; ++c) {
  c->call_on_tx = 0;
  c->call_on_rx = 0;
  c->call_on_msig = 0;
  c->call_on_scc = 0;
  c->call_on_err = 0;
 }


 for (c=b->chan; c<b->chan+NCHAN; ++c) {
  c->sccrx_empty = c->scctx_empty = 1;
  c->sccrx_b = c->sccrx_e = 0;
  c->scctx_b = c->scctx_e = 0;
  c->e1_first_int = 1;
 }


 ct_init (b, num, port, irq, dma, ctau_fw_data,
  ctau_fw_len, ctau_fw_tvec, ctau2_fw_data);


 fw = ctau_fw_data;
 flen = ctau_fw_len;
 ft = ctau_fw_tvec;
 switch (b->type) {
 case 133:
 case 130:
 case 132:
 case 131:
  fw = ctau2_fw_data;
  flen = 0;
  ft = ((void*)0);
  break;

 case 128:
  fw = ctaug703_fw_data;
  flen = ctaug703_fw_len;
  ft = ctaug703_fw_tvec;
  break;


 case 129:
  fw = ctaue1_fw_data;
  flen = ctaue1_fw_len;
  ft = ctaue1_fw_tvec;
  break;

 }

 return ct_setup_board (b, fw, flen, ft);
}
