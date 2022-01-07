
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int bus_mode; int bus_width; int chip_select; int clock; int power_mode; int vdd; uintptr_t vccq; int timing; } ;
struct TYPE_4__ {int f_min; int f_max; int host_ocr; int mode; int ocr; int caps; TYPE_1__ ios; } ;
struct jz4780_mmc_softc {TYPE_2__ sc_host; } ;
typedef int device_t ;


 int EINVAL ;
 struct jz4780_mmc_softc* device_get_softc (int ) ;
 int retune_req_none ;

__attribute__((used)) static int
jz4780_mmc_read_ivar(device_t bus, device_t child, int which,
    uintptr_t *result)
{
 struct jz4780_mmc_softc *sc;

 sc = device_get_softc(bus);
 switch (which) {
 default:
  return (EINVAL);
 case 144:
  *(int *)result = sc->sc_host.ios.bus_mode;
  break;
 case 143:
  *(int *)result = sc->sc_host.ios.bus_width;
  break;
 case 141:
  *(int *)result = sc->sc_host.ios.chip_select;
  break;
 case 140:
  *(int *)result = sc->sc_host.ios.clock;
  break;
 case 138:
  *(int *)result = sc->sc_host.f_min;
  break;
 case 139:
  *(int *)result = sc->sc_host.f_max;
  break;
 case 137:
  *(int *)result = sc->sc_host.host_ocr;
  break;
 case 134:
  *(int *)result = sc->sc_host.mode;
  break;
 case 133:
  *(int *)result = sc->sc_host.ocr;
  break;
 case 132:
  *(int *)result = sc->sc_host.ios.power_mode;
  break;
 case 131:
  *(int *)result = retune_req_none;
  break;
 case 128:
  *(int *)result = sc->sc_host.ios.vdd;
  break;
 case 129:
  *result = sc->sc_host.ios.vccq;
  break;
 case 142:
  *(int *)result = sc->sc_host.caps;
  break;
 case 130:
  *(int *)result = sc->sc_host.ios.timing;
  break;
 case 135:
  *(int *)result = 65535;
  break;
 case 136:
  *(int *)result = 1000000;
  break;
 }

 return (0);
}
