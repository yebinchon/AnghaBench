
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct bwn_rfatt {int dummy; } ;
struct bwn_phy_g {int pg_bbatt; int pg_rfatt; } ;
struct TYPE_2__ {struct bwn_phy_g phy_g; } ;
struct bwn_mac {TYPE_1__ mac_phy; } ;
struct bwn_lo_calib {int ctl; } ;
typedef int rf ;


 int bwn_lo_fixup_rfatt (struct bwn_rfatt*) ;
 struct bwn_lo_calib* bwn_lo_get_calib (struct bwn_mac*,int *,struct bwn_rfatt*) ;
 int bwn_lo_write (struct bwn_mac*,int *) ;
 int memcpy (struct bwn_rfatt*,int *,int) ;

__attribute__((used)) static void
bwn_lo_g_adjust(struct bwn_mac *mac)
{
 struct bwn_phy_g *pg = &mac->mac_phy.phy_g;
 struct bwn_lo_calib *cal;
 struct bwn_rfatt rf;

 memcpy(&rf, &pg->pg_rfatt, sizeof(rf));
 bwn_lo_fixup_rfatt(&rf);

 cal = bwn_lo_get_calib(mac, &pg->pg_bbatt, &rf);
 if (!cal)
  return;
 bwn_lo_write(mac, &cal->ctl);
}
