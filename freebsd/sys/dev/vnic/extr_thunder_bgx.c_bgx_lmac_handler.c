
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lmac {int last_link; int last_duplex; int last_speed; int link_up; int check_link; scalar_t__ is_sgmii; int lmacid; int phy_if_dev; } ;


 int LMAC_MEDIA_STATUS (int ,int ,int*,int*,int*) ;
 int bgx_sgmii_change_link_state (struct lmac*) ;
 int bgx_xaui_check_link (struct lmac*) ;
 int callout_reset (int *,int,void (*) (void*),struct lmac*) ;
 int hz ;

__attribute__((used)) static void
bgx_lmac_handler(void *arg)
{
 struct lmac *lmac;
 int link, duplex, speed;
 int link_changed = 0;
 int err;

 lmac = (struct lmac *)arg;

 err = LMAC_MEDIA_STATUS(lmac->phy_if_dev, lmac->lmacid,
     &link, &duplex, &speed);
 if (err != 0)
  goto out;

 if (!link && lmac->last_link)
  link_changed = -1;

 if (link &&
     (lmac->last_duplex != duplex ||
      lmac->last_link != link ||
      lmac->last_speed != speed)) {
   link_changed = 1;
 }

 lmac->last_link = link;
 lmac->last_speed = speed;
 lmac->last_duplex = duplex;

 if (!link_changed)
  goto out;

 if (link_changed > 0)
  lmac->link_up = 1;
 else
  lmac->link_up = 0;

 if (lmac->is_sgmii)
  bgx_sgmii_change_link_state(lmac);
 else
  bgx_xaui_check_link(lmac);

out:
 callout_reset(&lmac->check_link, hz * 2, bgx_lmac_handler, lmac);
}
