
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct agp_softc {int as_allocated; int as_maxmem; int * as_aperture; } ;
struct agp_info {int ai_memory_used; int ai_memory_allowed; int ai_aperture_size; int ai_aperture_base; int ai_mode; } ;
typedef int device_t ;


 int AGP_GET_APERTURE (int ) ;
 scalar_t__ AGP_STATUS ;
 scalar_t__ agp_find_caps (int ) ;
 struct agp_softc* device_get_softc (int ) ;
 int pci_read_config (int ,scalar_t__,int) ;
 int rman_get_start (int *) ;

void
agp_get_info(device_t dev, struct agp_info *info)
{
 struct agp_softc *sc = device_get_softc(dev);

 info->ai_mode =
  pci_read_config(dev, agp_find_caps(dev) + AGP_STATUS, 4);
 if (sc->as_aperture != ((void*)0))
  info->ai_aperture_base = rman_get_start(sc->as_aperture);
 else
  info->ai_aperture_base = 0;
 info->ai_aperture_size = AGP_GET_APERTURE(dev);
 info->ai_memory_allowed = sc->as_maxmem;
 info->ai_memory_used = sc->as_allocated;
}
