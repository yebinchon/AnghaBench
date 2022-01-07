
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct eventtimer {int dummy; } ;
struct TYPE_3__ {char* et_name; int et_flags; int et_frequency; int et_min_period; int et_max_period; int et_priv; int et_stop; int et_start; scalar_t__ et_quality; } ;
struct atrtc_softc {TYPE_1__ et; int * intr_res; int intr_handler; scalar_t__ intr_rid; int * port_res; scalar_t__ port_rid; } ;
typedef int rman_res_t ;
typedef int device_t ;


 int ET_FLAGS_PERIODIC ;
 int ET_FLAGS_POW2DIV ;
 int INTR_TYPE_CLK ;
 int IO_RTC ;
 int RF_ACTIVE ;
 int SYS_RES_IOPORT ;
 int SYS_RES_IRQ ;
 int atrtc_start () ;
 int atrtcclock_disable ;
 void* bus_alloc_resource (int ,int ,scalar_t__*,int,int,int,int ) ;
 int bus_bind_intr (int ,int *,int ) ;
 scalar_t__ bus_get_resource (int ,int ,scalar_t__,int*,int *) ;
 scalar_t__ bus_setup_intr (int ,int *,int ,int ,int *,struct atrtc_softc*,int *) ;
 int bzero (TYPE_1__*,int) ;
 int clock_register (int ,int) ;
 int device_get_name (int ) ;
 struct atrtc_softc* device_get_softc (int ) ;
 int device_get_unit (int ) ;
 int device_printf (int ,char*) ;
 int et_register (TYPE_1__*) ;
 scalar_t__ resource_int_value (int ,int ,char*,int*) ;
 int rtc_intr ;
 int rtc_start ;
 int rtc_stop ;

__attribute__((used)) static int
atrtc_attach(device_t dev)
{
 struct atrtc_softc *sc;
 rman_res_t s;
 int i;

 sc = device_get_softc(dev);
 sc->port_res = bus_alloc_resource(dev, SYS_RES_IOPORT, &sc->port_rid,
     IO_RTC, IO_RTC + 1, 2, RF_ACTIVE);
 if (sc->port_res == ((void*)0))
  device_printf(dev, "Warning: Couldn't map I/O.\n");
 atrtc_start();
 clock_register(dev, 1000000);
 bzero(&sc->et, sizeof(struct eventtimer));
 if (!atrtcclock_disable &&
     (resource_int_value(device_get_name(dev), device_get_unit(dev),
      "clock", &i) != 0 || i != 0)) {
  sc->intr_rid = 0;
  while (bus_get_resource(dev, SYS_RES_IRQ, sc->intr_rid,
      &s, ((void*)0)) == 0 && s != 8)
   sc->intr_rid++;
  sc->intr_res = bus_alloc_resource(dev, SYS_RES_IRQ,
      &sc->intr_rid, 8, 8, 1, RF_ACTIVE);
  if (sc->intr_res == ((void*)0)) {
   device_printf(dev, "Can't map interrupt.\n");
   return (0);
  } else if ((bus_setup_intr(dev, sc->intr_res, INTR_TYPE_CLK,
      rtc_intr, ((void*)0), sc, &sc->intr_handler))) {
   device_printf(dev, "Can't setup interrupt.\n");
   return (0);
  } else {

   bus_bind_intr(dev, sc->intr_res, 0);
  }
  sc->et.et_name = "RTC";
  sc->et.et_flags = ET_FLAGS_PERIODIC | ET_FLAGS_POW2DIV;
  sc->et.et_quality = 0;
  sc->et.et_frequency = 32768;
  sc->et.et_min_period = 0x00080000;
  sc->et.et_max_period = 0x80000000;
  sc->et.et_start = rtc_start;
  sc->et.et_stop = rtc_stop;
  sc->et.et_priv = dev;
  et_register(&sc->et);
 }
 return(0);
}
