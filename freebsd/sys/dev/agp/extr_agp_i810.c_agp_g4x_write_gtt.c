
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int u_int ;
struct agp_i810_softc {int * sc_res; } ;
typedef int device_t ;


 int CTR2 (int ,char*,int,int ) ;
 int KTR_AGP_I810 ;
 int bus_write_4 (int ,int,int ) ;
 struct agp_i810_softc* device_get_softc (int ) ;

__attribute__((used)) static void
agp_g4x_write_gtt(device_t dev, u_int index, uint32_t pte)
{
 struct agp_i810_softc *sc;

 sc = device_get_softc(dev);
 bus_write_4(sc->sc_res[0], index * 4 + (2 * 1024 * 1024), pte);
 CTR2(KTR_AGP_I810, "g4x_pte %x %x", index, pte);
}
