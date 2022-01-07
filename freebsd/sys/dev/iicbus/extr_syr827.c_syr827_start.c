
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct syr827_softc {int intr_hook; } ;
typedef void* device_t ;


 int ID1 ;
 int ID1_DIE_MASK ;
 int ID1_VENDOR_MASK ;
 int ID1_VENDOR_SHIFT ;
 int ID2 ;
 int ID2_DIE_REV_MASK ;
 scalar_t__ bootverbose ;
 int config_intrhook_disestablish (int *) ;
 struct syr827_softc* device_get_softc (void*) ;
 int device_printf (void*,char*,int,...) ;
 int syr827_read (void*,int ,int*,int) ;

__attribute__((used)) static void
syr827_start(void *pdev)
{
 struct syr827_softc *sc;
 device_t dev;
 uint8_t val;

 dev = pdev;
 sc = device_get_softc(dev);

 if (bootverbose) {
  syr827_read(dev, ID1, &val, 1);
  device_printf(dev, "Vendor ID: %x, DIE ID: %x\n",
      (val & ID1_VENDOR_MASK) >> ID1_VENDOR_SHIFT,
      val & ID1_DIE_MASK);
  syr827_read(dev, ID2, &val, 1);
  device_printf(dev, "DIE Rev: %x\n", val & ID2_DIE_REV_MASK);
 }

 config_intrhook_disestablish(&sc->intr_hook);
}
