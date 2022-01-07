
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lmac {int last_speed; int last_duplex; int link_up; } ;
struct bgx_link_status {int speed; int duplex; int link_up; } ;
struct bgx {struct lmac* lmac; } ;


 int MAX_BGX_PER_CN88XX ;
 struct bgx** bgx_vnic ;

void
bgx_get_lmac_link_state(int node, int bgx_idx, int lmacid, void *status)
{
 struct bgx_link_status *link = (struct bgx_link_status *)status;
 struct bgx *bgx;
 struct lmac *lmac;

 bgx = bgx_vnic[(node * MAX_BGX_PER_CN88XX) + bgx_idx];
 if (bgx == ((void*)0))
  return;

 lmac = &bgx->lmac[lmacid];
 link->link_up = lmac->link_up;
 link->duplex = lmac->last_duplex;
 link->speed = lmac->last_speed;
}
