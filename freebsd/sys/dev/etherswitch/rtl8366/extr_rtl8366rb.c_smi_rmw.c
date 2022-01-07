
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct rtl8366rb_softc {int dummy; } ;
typedef int device_t ;


 int DEVERR (int ,int,char*,int) ;
 int EBUSY ;
 int EIO ;
 struct rtl8366rb_softc* device_get_softc (int ) ;
 int smi_acquire (struct rtl8366rb_softc*,int) ;
 int smi_read_locked (struct rtl8366rb_softc*,int,int*,int) ;
 int smi_release (struct rtl8366rb_softc*,int) ;
 int smi_write_locked (struct rtl8366rb_softc*,int,int,int) ;

__attribute__((used)) static int
smi_rmw(device_t dev, uint16_t addr, uint16_t mask, uint16_t data, int sleep)
{
 struct rtl8366rb_softc *sc;
 int err;
 uint16_t oldv, newv;

 sc = device_get_softc(dev);

 err = smi_acquire(sc, sleep);
 if (err != 0)
  return (EBUSY);
 if (err == 0) {
  err = smi_read_locked(sc, addr, &oldv, sleep);
  if (err == 0) {
   newv = oldv & ~mask;
   newv |= data & mask;
   if (newv != oldv)
    err = smi_write_locked(sc, addr, newv, sleep);
  }
 }
 smi_release(sc, sleep);
 DEVERR(dev, err, "smi_rmw()=%d: addr=%04x\n", addr);
 return (err == 0 ? 0 : EIO);
}
