
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
 int CSR_READ_1 (struct ste_softc*,int ) ;
 int STE_PHYCTL ;
 struct ste_softc* device_get_softc (int ) ;

__attribute__((used)) static uint32_t
ste_mii_bitbang_read(device_t dev)
{
 struct ste_softc *sc;
 uint32_t val;

 sc = device_get_softc(dev);

 val = CSR_READ_1(sc, STE_PHYCTL);
 CSR_BARRIER(sc, STE_PHYCTL, 1,
     BUS_SPACE_BARRIER_READ | BUS_SPACE_BARRIER_WRITE);

 return (val);
}
