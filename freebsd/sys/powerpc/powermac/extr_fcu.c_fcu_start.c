
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fcu_softc {int enum_hook; int sc_addr; int sc_dev; } ;
typedef int device_t ;


 int config_intrhook_disestablish (int *) ;
 struct fcu_softc* device_get_softc (int ) ;
 int device_printf (int ,char*,int) ;
 int fcu_attach_fans (int ) ;
 int fcu_read_1 (int ,int ,int ,unsigned char*) ;
 int fcu_rpm_shift ;
 int fcu_write (int ,int ,int,unsigned char*,int) ;

__attribute__((used)) static void
fcu_start(void *xdev)
{
 unsigned char buf[1] = { 0xff };
 struct fcu_softc *sc;

 device_t dev = (device_t)xdev;

 sc = device_get_softc(dev);


 fcu_write(sc->sc_dev, sc->sc_addr, 0xe, buf, 1);
 fcu_write(sc->sc_dev, sc->sc_addr, 0x2e, buf, 1);
 fcu_read_1(sc->sc_dev, sc->sc_addr, 0, buf);
 fcu_rpm_shift = (buf[0] == 1) ? 2 : 3;

 device_printf(dev, "FCU initialized, RPM shift: %d\n",
        fcu_rpm_shift);



 fcu_attach_fans(dev);

 config_intrhook_disestablish(&sc->enum_hook);

}
