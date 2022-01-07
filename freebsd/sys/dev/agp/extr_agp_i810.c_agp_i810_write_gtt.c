
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int u_int ;
struct agp_i810_softc {int * sc_res; } ;
typedef int device_t ;


 scalar_t__ AGP_I810_GTT ;
 int CTR2 (int ,char*,int,int ) ;
 int KTR_AGP_I810 ;
 int bus_write_4 (int ,scalar_t__,int ) ;
 struct agp_i810_softc* device_get_softc (int ) ;

__attribute__((used)) static void
agp_i810_write_gtt(device_t dev, u_int index, uint32_t pte)
{
 struct agp_i810_softc *sc;

 sc = device_get_softc(dev);
 bus_write_4(sc->sc_res[0], AGP_I810_GTT + index * 4, pte);
 CTR2(KTR_AGP_I810, "810_pte %x %x", index, pte);
}
