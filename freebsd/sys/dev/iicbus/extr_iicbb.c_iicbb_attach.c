
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iicbb_softc {int scl_low_timeout; int udelay; int iicbus; } ;
typedef int device_t ;


 int CTLFLAG_RD ;
 int CTLFLAG_RWTUN ;
 int DEFAULT_SCL_LOW_TIMEOUT ;
 int ENXIO ;
 int OID_AUTO ;
 int SYSCTL_ADD_UINT (int ,int ,int ,char*,int ,int *,int ,char*) ;
 int SYSCTL_CHILDREN (int ) ;
 int bus_generic_attach (int ) ;
 int device_add_child (int ,char*,int) ;
 scalar_t__ device_get_softc (int ) ;
 int device_get_sysctl_ctx (int ) ;
 int device_get_sysctl_tree (int ) ;

__attribute__((used)) static int
iicbb_attach(device_t dev)
{
 struct iicbb_softc *sc = (struct iicbb_softc *)device_get_softc(dev);

 sc->iicbus = device_add_child(dev, "iicbus", -1);
 if (!sc->iicbus)
  return (ENXIO);

 sc->scl_low_timeout = DEFAULT_SCL_LOW_TIMEOUT;

 SYSCTL_ADD_UINT(device_get_sysctl_ctx(dev),
     SYSCTL_CHILDREN(device_get_sysctl_tree(dev)), OID_AUTO,
     "delay", CTLFLAG_RD, &sc->udelay,
     0, "Signal change delay controlled by bus frequency, microseconds");

 SYSCTL_ADD_UINT(device_get_sysctl_ctx(dev),
     SYSCTL_CHILDREN(device_get_sysctl_tree(dev)), OID_AUTO,
     "scl_low_timeout", CTLFLAG_RWTUN, &sc->scl_low_timeout,
     0, "SCL low timeout, microseconds");
 bus_generic_attach(dev);
 return (0);
}
