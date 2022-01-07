
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bhndb_softc {int * dev; } ;
struct bhndb_devinfo {int addrspace; } ;
typedef int * device_t ;
typedef int bhndb_addrspace ;


 struct bhndb_devinfo* device_get_ivars (int *) ;
 int device_get_nameunit (int *) ;
 int * device_get_parent (int *) ;
 int panic (char*,int ) ;

bhndb_addrspace
bhndb_get_addrspace(struct bhndb_softc *sc, device_t child)
{
 struct bhndb_devinfo *dinfo;
 device_t imd_dev;


 imd_dev = child;
 while (imd_dev != ((void*)0) && device_get_parent(imd_dev) != sc->dev)
  imd_dev = device_get_parent(imd_dev);

 if (imd_dev == ((void*)0))
  panic("bhndb address space request for non-child device %s\n",
       device_get_nameunit(child));

 dinfo = device_get_ivars(imd_dev);
 return (dinfo->addrspace);
}
