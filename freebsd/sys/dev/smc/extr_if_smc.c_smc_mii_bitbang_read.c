
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct smc_softc {int smc_dev; } ;
typedef int device_t ;


 int BSR ;
 int BSR_BANK_MASK ;
 int BUS_SPACE_BARRIER_READ ;
 int BUS_SPACE_BARRIER_WRITE ;
 int KASSERT (int,char*) ;
 int MGMT ;
 int SMC_ASSERT_LOCKED (struct smc_softc*) ;
 int device_get_nameunit (int ) ;
 struct smc_softc* device_get_softc (int ) ;
 int smc_barrier (struct smc_softc*,int ,int,int) ;
 int smc_read_2 (struct smc_softc*,int ) ;

__attribute__((used)) static uint32_t
smc_mii_bitbang_read(device_t dev)
{
 struct smc_softc *sc;
 uint32_t val;

 sc = device_get_softc(dev);

 SMC_ASSERT_LOCKED(sc);
 KASSERT((smc_read_2(sc, BSR) & BSR_BANK_MASK) == 3,
     ("%s: smc_mii_bitbang_read called with bank %d (!= 3)",
     device_get_nameunit(sc->smc_dev),
     smc_read_2(sc, BSR) & BSR_BANK_MASK));

 val = smc_read_2(sc, MGMT);
 smc_barrier(sc, MGMT, 2,
     BUS_SPACE_BARRIER_READ | BUS_SPACE_BARRIER_WRITE);

 return (val);
}
