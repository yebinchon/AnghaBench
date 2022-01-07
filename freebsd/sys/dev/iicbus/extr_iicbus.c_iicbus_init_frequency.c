
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_int ;
struct iicbus_softc {int bus_freq; } ;
typedef int device_t ;


 int CTLFLAG_RW ;
 int CTLFLAG_TUN ;
 struct iicbus_softc* IICBUS_SOFTC (int ) ;
 int OID_AUTO ;
 int SYSCTL_ADD_UINT (int ,int ,int ,char*,int,int*,int,char*) ;
 int SYSCTL_CHILDREN (int ) ;
 int device_get_name (int ) ;
 int device_get_sysctl_ctx (int ) ;
 int device_get_sysctl_tree (int ) ;
 int device_get_unit (int ) ;
 int resource_int_value (int ,int ,char*,int*) ;

void
iicbus_init_frequency(device_t dev, u_int bus_freq)
{
 struct iicbus_softc *sc = IICBUS_SOFTC(dev);






 if (bus_freq > 0)
  sc->bus_freq = bus_freq;
 else {
  sc->bus_freq = 100000;
  resource_int_value(device_get_name(dev), device_get_unit(dev),
      "frequency", (int *)&sc->bus_freq);
 }







 SYSCTL_ADD_UINT(device_get_sysctl_ctx(dev),
     SYSCTL_CHILDREN(device_get_sysctl_tree(dev)),
     OID_AUTO, "frequency", CTLFLAG_RW | CTLFLAG_TUN, &sc->bus_freq,
     sc->bus_freq, "Bus frequency in Hz");
}
