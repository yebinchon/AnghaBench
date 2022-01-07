
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
struct mge_softc {int dummy; } ;
typedef int device_t ;


 int KASSERT (int ,char*) ;
 int MGE_DELAY (int ) ;
 scalar_t__ MGE_READ (struct mge_softc*,int ) ;
 int MGE_REG_SMI ;
 scalar_t__ MGE_SMI_BUSY ;
 scalar_t__ MGE_SMI_DATA_MASK ;
 int MGE_SMI_DELAY ;
 int MGE_SMI_LOCK () ;
 int MGE_SMI_MASK ;
 int MGE_SMI_READ ;
 scalar_t__ MGE_SMI_READVALID ;
 int MGE_SMI_UNLOCK () ;
 int MGE_SMI_WRITE_DELAY ;
 scalar_t__ MGE_SMI_WRITE_RETRIES ;
 int MGE_WRITE (struct mge_softc*,int ,int) ;
 struct mge_softc* device_get_softc (int ) ;
 int device_printf (int ,char*) ;

__attribute__((used)) static uint32_t
mv_read_ge_smi(device_t dev, int phy, int reg)
{
 uint32_t timeout;
 uint32_t ret;
 struct mge_softc *sc;

 sc = device_get_softc(dev);
 KASSERT(sc != ((void*)0), ("NULL softc ptr!"));
 timeout = MGE_SMI_WRITE_RETRIES;

 MGE_SMI_LOCK();
 while (--timeout &&
     (MGE_READ(sc, MGE_REG_SMI) & MGE_SMI_BUSY))
  MGE_DELAY(MGE_SMI_WRITE_DELAY);

 if (timeout == 0) {
  device_printf(dev, "SMI write timeout.\n");
  ret = ~0U;
  goto out;
 }

 MGE_WRITE(sc, MGE_REG_SMI, MGE_SMI_MASK &
     (MGE_SMI_READ | (reg << 21) | (phy << 16)));


 timeout = MGE_SMI_WRITE_RETRIES;
 while (--timeout &&
     !((MGE_READ(sc, MGE_REG_SMI) & MGE_SMI_READVALID)))
  MGE_DELAY(MGE_SMI_WRITE_DELAY);

 if (timeout == 0) {
  device_printf(dev, "SMI write validation timeout.\n");
  ret = ~0U;
  goto out;
 }


 MGE_DELAY(MGE_SMI_DELAY);
 ret = MGE_READ(sc, MGE_REG_SMI) & MGE_SMI_DATA_MASK;

out:
 MGE_SMI_UNLOCK();
 return (ret);

}
