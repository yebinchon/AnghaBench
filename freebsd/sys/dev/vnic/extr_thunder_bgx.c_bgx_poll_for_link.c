
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint64_t ;
struct lmac {int link_up; int last_speed; int last_duplex; int last_link; int check_link; TYPE_1__* bgx; int lmacid; } ;
struct TYPE_4__ {scalar_t__ lmac_type; } ;


 scalar_t__ BGX_MODE_XLAUI ;
 int BGX_SPUX_STATUS1 ;
 int SPU_STATUS1_RCV_LNK ;
 int bgx_poll_reg (TYPE_1__*,int ,int ,int,int) ;
 int bgx_reg_modify (TYPE_1__*,int ,int ,int) ;
 int bgx_reg_read (TYPE_1__*,int ,int ) ;
 int bgx_xaui_check_link (struct lmac*) ;
 int callout_reset (int *,int,void (*) (void*),struct lmac*) ;
 int hz ;

__attribute__((used)) static void
bgx_poll_for_link(void *arg)
{
 struct lmac *lmac;
 uint64_t link;

 lmac = (struct lmac *)arg;


 bgx_reg_modify(lmac->bgx, lmac->lmacid,
         BGX_SPUX_STATUS1, SPU_STATUS1_RCV_LNK);
 bgx_poll_reg(lmac->bgx, lmac->lmacid, BGX_SPUX_STATUS1,
       SPU_STATUS1_RCV_LNK, 0);

 link = bgx_reg_read(lmac->bgx, lmac->lmacid, BGX_SPUX_STATUS1);
 if (link & SPU_STATUS1_RCV_LNK) {
  lmac->link_up = 1;
  if (lmac->bgx->lmac_type == BGX_MODE_XLAUI)
   lmac->last_speed = 40000;
  else
   lmac->last_speed = 10000;
  lmac->last_duplex = 1;
 } else {
  lmac->link_up = 0;
 }

 if (lmac->last_link != lmac->link_up) {
  lmac->last_link = lmac->link_up;
  if (lmac->link_up)
   bgx_xaui_check_link(lmac);
 }

 callout_reset(&lmac->check_link, hz * 2, bgx_poll_for_link, lmac);
}
