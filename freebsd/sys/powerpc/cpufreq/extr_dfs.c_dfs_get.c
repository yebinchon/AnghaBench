
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dfs_softc {scalar_t__ dfs4; } ;
struct cf_setting {int freq; int dev; } ;
typedef int register_t ;
typedef int device_t ;


 int CPUFREQ_VAL_UNKNOWN ;
 int EINVAL ;
 int HID1_DFS2 ;
 int HID1_DFS4 ;
 int SPR_HID1 ;
 struct dfs_softc* device_get_softc (int ) ;
 int memset (struct cf_setting*,int ,int) ;
 int mfspr (int ) ;

__attribute__((used)) static int
dfs_get(device_t dev, struct cf_setting *set)
{
 struct dfs_softc *sc;
 register_t hid1;

 if (set == ((void*)0))
  return (EINVAL);
 sc = device_get_softc(dev);

 memset(set, CPUFREQ_VAL_UNKNOWN, sizeof(*set));

 hid1 = mfspr(SPR_HID1);

 set->freq = 10000;
 if (hid1 & HID1_DFS2)
  set->freq = 5000;
 else if (sc->dfs4 && (hid1 & HID1_DFS4))
  set->freq = 2500;

 set->dev = dev;

 return (0);
}
