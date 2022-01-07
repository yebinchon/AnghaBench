
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bwi_mac {int dummy; } ;


 int BWI_COMM_MOBJ ;
 int BWI_COMM_MOBJ_KEYTABLE_OFS ;
 int MOBJ_READ_2 (struct bwi_mac*,int ,int ) ;

void
bwi_mac_reset_hwkeys(struct bwi_mac *mac)
{

 MOBJ_READ_2(mac, BWI_COMM_MOBJ, BWI_COMM_MOBJ_KEYTABLE_OFS);
}
