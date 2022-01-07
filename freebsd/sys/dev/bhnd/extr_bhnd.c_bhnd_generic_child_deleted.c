
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bhnd_softc {int dummy; } ;
typedef int device_t ;


 int * bhnd_get_pmu_info (int ) ;
 int device_get_nameunit (int ) ;
 struct bhnd_softc* device_get_softc (int ) ;
 int panic (char*,int ) ;

void
bhnd_generic_child_deleted(device_t dev, device_t child)
{
 struct bhnd_softc *sc;

 sc = device_get_softc(dev);


 if (bhnd_get_pmu_info(child) != ((void*)0)) {



  panic("%s leaked device pmu state\n",
      device_get_nameunit(child));
 }
}
