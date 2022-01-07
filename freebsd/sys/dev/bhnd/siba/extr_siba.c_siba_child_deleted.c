
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct siba_devinfo {int dummy; } ;
struct bhnd_softc {int dummy; } ;
typedef int device_t ;


 int bhnd_generic_child_deleted (int ,int ) ;
 struct siba_devinfo* device_get_ivars (int ) ;
 struct bhnd_softc* device_get_softc (int ) ;
 int device_set_ivars (int ,int *) ;
 int siba_free_dinfo (int ,int ,struct siba_devinfo*) ;

__attribute__((used)) static void
siba_child_deleted(device_t dev, device_t child)
{
 struct bhnd_softc *sc;
 struct siba_devinfo *dinfo;

 sc = device_get_softc(dev);


 bhnd_generic_child_deleted(dev, child);


 if ((dinfo = device_get_ivars(child)) != ((void*)0))
  siba_free_dinfo(dev, child, dinfo);

 device_set_ivars(child, ((void*)0));
}
