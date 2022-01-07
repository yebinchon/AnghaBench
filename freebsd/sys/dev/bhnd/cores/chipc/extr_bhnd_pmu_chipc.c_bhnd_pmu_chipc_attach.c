
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct chipc_softc {struct bhnd_resource* core; } ;
struct bhnd_resource {int dummy; } ;
typedef int device_t ;


 int bhnd_pmu_attach (int ,struct bhnd_resource*) ;
 int device_get_parent (int ) ;
 struct chipc_softc* device_get_softc (int ) ;

__attribute__((used)) static int
bhnd_pmu_chipc_attach(device_t dev)
{
 struct chipc_softc *chipc_sc;
 struct bhnd_resource *r;


 chipc_sc = device_get_softc(device_get_parent(dev));
 r = chipc_sc->core;

 return (bhnd_pmu_attach(dev, r));
}
