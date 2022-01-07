
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cf_setting {int freq; } ;
typedef int register_t ;
typedef int device_t ;


 int EINVAL ;
 int HID1_DFS2 ;
 int HID1_DFS4 ;
 int SPR_HID1 ;
 int isync () ;
 int mfspr (int ) ;
 int mtspr (int ,int) ;
 int powerpc_sync () ;

__attribute__((used)) static int
dfs_set(device_t dev, const struct cf_setting *set)
{
 register_t hid1;

 if (set == ((void*)0))
  return (EINVAL);

 hid1 = mfspr(SPR_HID1);
 hid1 &= ~(HID1_DFS2 | HID1_DFS4);

 if (set->freq == 5000)
  hid1 |= HID1_DFS2;
 else if (set->freq == 2500)
  hid1 |= HID1_DFS4;






 powerpc_sync();
 mtspr(SPR_HID1, hid1);
 powerpc_sync(); isync();

 return (0);
}
