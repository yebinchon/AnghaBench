
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtl8366rb_softc {int dummy; } ;
typedef int device_t ;


 int DEBUG_INCRVAR (int ) ;
 int DEVERR (int ,int,char*,int,int) ;
 int DPRINTF (int ,char*,int) ;
 int EBUSY ;
 int EIO ;
 int ENXIO ;
 int RTL8366_NUM_PHYS ;
 int RTL8366_NUM_PHY_REG ;
 int RTL8366_PACR ;
 int RTL8366_PACR_WRITE ;
 int RTL8366_PHYREG (int,int ,int) ;
 int RTL_IICBUS_RETRIES ;
 int RTL_IICBUS_RETRY_SLEEP ;
 int RTL_WAITOK ;
 struct rtl8366rb_softc* device_get_softc (int ) ;
 int pause (char*,int ) ;
 int phy_access_retries ;
 int smi_acquire (struct rtl8366rb_softc*,int) ;
 int smi_release (struct rtl8366rb_softc*,int) ;
 int smi_write_locked (struct rtl8366rb_softc*,int ,int,int) ;

__attribute__((used)) static int
rtl_writephy(device_t dev, int phy, int reg, int data)
{
 struct rtl8366rb_softc *sc;
 int err, i, sleep;

 sc = device_get_softc(dev);

 if (phy < 0 || phy >= RTL8366_NUM_PHYS)
  return (ENXIO);
 if (reg < 0 || reg >= RTL8366_NUM_PHY_REG)
  return (ENXIO);
 sleep = RTL_WAITOK;
 err = smi_acquire(sc, sleep);
 if (err != 0)
  return (EBUSY);
 for (i = RTL_IICBUS_RETRIES; i--; ) {
  err = smi_write_locked(sc, RTL8366_PACR, RTL8366_PACR_WRITE, sleep);
  if (err == 0)
   err = smi_write_locked(sc, RTL8366_PHYREG(phy, 0, reg), data, sleep);
  if (err == 0) {
   break;
  }
  DEBUG_INCRVAR(phy_access_retries);
  DPRINTF(dev, "rtl_writephy(): chip not responsive, retrying %d more tiems\n", i);
  pause("rtl_writephy", RTL_IICBUS_RETRY_SLEEP);
 }
 smi_release(sc, sleep);
 DEVERR(dev, err, "rtl_writephy()=%d: phy=%d.%02x\n", phy, reg);
 return (err == 0 ? 0 : EIO);
}
