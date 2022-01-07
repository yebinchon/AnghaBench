
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
typedef int u_int ;
struct agp_i810_softc {TYPE_2__* match; } ;
struct TYPE_4__ {TYPE_1__* driver; } ;
struct TYPE_3__ {void (* write_gtt ) (int ,int ,int ) ;} ;


 struct agp_i810_softc* device_get_softc (int ) ;
 int intel_agp ;
 void stub1 (int ,int ,int ) ;

void
intel_gtt_write(u_int entry, uint32_t val)
{
 struct agp_i810_softc *sc;

 sc = device_get_softc(intel_agp);
 return (sc->match->driver->write_gtt(intel_agp, entry, val));
}
