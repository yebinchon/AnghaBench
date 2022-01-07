
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct xdmatest_softc* ich_arg; int ich_func; } ;
struct xdmatest_softc {TYPE_1__ config_intrhook; int dev; int mtx; } ;
typedef int device_t ;


 int MTX_DEF ;
 scalar_t__ config_intrhook_establish (TYPE_1__*) ;
 int device_get_nameunit (int ) ;
 struct xdmatest_softc* device_get_softc (int ) ;
 int device_printf (int ,char*) ;
 int mtx_init (int *,int ,char*,int ) ;
 int xdmatest_alloc_test_memory (struct xdmatest_softc*) ;
 int xdmatest_delayed_attach ;

__attribute__((used)) static int
xdmatest_attach(device_t dev)
{
 struct xdmatest_softc *sc;
 int err;

 sc = device_get_softc(dev);
 sc->dev = dev;

 mtx_init(&sc->mtx, device_get_nameunit(dev), "xdmatest", MTX_DEF);


 err = xdmatest_alloc_test_memory(sc);
 if (err != 0) {
  device_printf(sc->dev, "Can't allocate test memory.\n");
  return (-1);
 }


 sc->config_intrhook.ich_func = xdmatest_delayed_attach;
 sc->config_intrhook.ich_arg = sc;
 if (config_intrhook_establish(&sc->config_intrhook) != 0)
  device_printf(dev, "config_intrhook_establish failed\n");

 return (0);
}
