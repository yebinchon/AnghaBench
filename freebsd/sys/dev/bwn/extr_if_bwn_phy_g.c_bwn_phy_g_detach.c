
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct bwn_phy_g {int pg_flags; int * pg_tssi2dbm; } ;
struct TYPE_2__ {struct bwn_phy_g phy_g; } ;
struct bwn_mac {TYPE_1__ mac_phy; } ;


 int BWN_PHY_G_FLAG_TSSITABLE_ALLOC ;
 int M_DEVBUF ;
 int free (int *,int ) ;

void
bwn_phy_g_detach(struct bwn_mac *mac)
{
 struct bwn_phy_g *pg = &mac->mac_phy.phy_g;

 if (pg->pg_flags & BWN_PHY_G_FLAG_TSSITABLE_ALLOC) {
  free(pg->pg_tssi2dbm, M_DEVBUF);
  pg->pg_tssi2dbm = ((void*)0);
 }
 pg->pg_flags = 0;
}
