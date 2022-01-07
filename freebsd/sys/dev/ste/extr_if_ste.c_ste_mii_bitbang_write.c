
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct ste_softc {int dummy; } ;
typedef int device_t ;


 int BUS_SPACE_BARRIER_READ ;
 int BUS_SPACE_BARRIER_WRITE ;
 int CSR_BARRIER (struct ste_softc*,int ,int,int) ;
 int CSR_WRITE_1 (struct ste_softc*,int ,int ) ;
 int STE_PHYCTL ;
 struct ste_softc* device_get_softc (int ) ;

__attribute__((used)) static void
ste_mii_bitbang_write(device_t dev, uint32_t val)
{
 struct ste_softc *sc;

 sc = device_get_softc(dev);

 CSR_WRITE_1(sc, STE_PHYCTL, val);
 CSR_BARRIER(sc, STE_PHYCTL, 1,
     BUS_SPACE_BARRIER_READ | BUS_SPACE_BARRIER_WRITE);
}
