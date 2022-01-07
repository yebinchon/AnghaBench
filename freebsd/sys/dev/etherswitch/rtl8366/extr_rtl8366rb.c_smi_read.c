
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct rtl8366rb_softc {int dummy; } ;
typedef int device_t ;


 int DEVERR (int ,int,char*,int ) ;
 int EBUSY ;
 int EIO ;
 struct rtl8366rb_softc* device_get_softc (int ) ;
 int smi_acquire (struct rtl8366rb_softc*,int) ;
 int smi_read_locked (struct rtl8366rb_softc*,int ,int *,int) ;
 int smi_release (struct rtl8366rb_softc*,int) ;

__attribute__((used)) static int
smi_read(device_t dev, uint16_t addr, uint16_t *data, int sleep)
{
 struct rtl8366rb_softc *sc;
 int err;

 sc = device_get_softc(dev);

 err = smi_acquire(sc, sleep);
 if (err != 0)
  return (EBUSY);
 err = smi_read_locked(sc, addr, data, sleep);
 smi_release(sc, sleep);
 DEVERR(dev, err, "smi_read()=%d: addr=%04x\n", addr);
 return (err == 0 ? 0 : EIO);
}
