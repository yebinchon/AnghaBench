
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct stge_softc {int dummy; } ;
typedef int device_t ;


 int BUS_SPACE_BARRIER_READ ;
 int BUS_SPACE_BARRIER_WRITE ;
 int CSR_BARRIER (struct stge_softc*,int ,int,int) ;
 int CSR_WRITE_1 (struct stge_softc*,int ,int ) ;
 int STGE_PhyCtrl ;
 struct stge_softc* device_get_softc (int ) ;

__attribute__((used)) static void
stge_mii_bitbang_write(device_t dev, uint32_t val)
{
 struct stge_softc *sc;

 sc = device_get_softc(dev);

 CSR_WRITE_1(sc, STGE_PhyCtrl, val);
 CSR_BARRIER(sc, STGE_PhyCtrl, 1,
     BUS_SPACE_BARRIER_READ | BUS_SPACE_BARRIER_WRITE);
}
