
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rt_softc {int dummy; } ;
typedef int device_t ;


 int RT_DEBUG_ANY ;
 int RT_DPRINTF (struct rt_softc*,int ,char*) ;
 struct rt_softc* device_get_softc (int ) ;
 int rt_stop (struct rt_softc*) ;

__attribute__((used)) static int
rt_suspend(device_t dev)
{
 struct rt_softc *sc;

 sc = device_get_softc(dev);
 RT_DPRINTF(sc, RT_DEBUG_ANY, "suspending\n");
 rt_stop(sc);

 return (0);
}
