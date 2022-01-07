
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int etherswitch_vlangroup_t ;
typedef int e6000sw_softc_t ;
typedef int device_t ;


 int E6000SW_LOCK (int *) ;
 int E6000SW_LOCK_ASSERT (int *,int ) ;
 int E6000SW_UNLOCK (int *) ;
 int SA_UNLOCKED ;
 int * device_get_softc (int ) ;
 int e6000sw_getvgroup (int ,int *) ;

__attribute__((used)) static int
e6000sw_getvgroup_wrapper(device_t dev, etherswitch_vlangroup_t *vg)
{
 e6000sw_softc_t *sc;
 int ret;

 sc = device_get_softc(dev);
 E6000SW_LOCK_ASSERT(sc, SA_UNLOCKED);

 E6000SW_LOCK(sc);
 ret = e6000sw_getvgroup(dev, vg);
 E6000SW_UNLOCK(sc);

 return (ret);
}
