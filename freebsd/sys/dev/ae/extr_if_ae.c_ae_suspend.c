
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;
typedef int ae_softc_t ;


 int AE_LOCK (int *) ;
 int AE_UNLOCK (int *) ;
 int ae_pm_init (int *) ;
 int ae_stop (int *) ;
 int * device_get_softc (int ) ;

__attribute__((used)) static int
ae_suspend(device_t dev)
{
 ae_softc_t *sc;

 sc = device_get_softc(dev);

 AE_LOCK(sc);
 ae_stop(sc);
 ae_pm_init(sc);
 AE_UNLOCK(sc);

 return (0);
}
