
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct agp_i810_softc {int gtt_mappable_entries; int gtt_total_entries; } ;
typedef int device_t ;


 struct agp_i810_softc* device_get_softc (int ) ;

__attribute__((used)) static int
agp_i810_get_gtt_total_entries(device_t dev)
{
 struct agp_i810_softc *sc;

 sc = device_get_softc(dev);
 sc->gtt_total_entries = sc->gtt_mappable_entries;
 return (0);
}
