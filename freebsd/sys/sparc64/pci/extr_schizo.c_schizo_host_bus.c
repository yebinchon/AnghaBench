
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;
struct schizo_softc {scalar_t__ sc_mode; int sc_dev; } ;


 int FILTER_HANDLED ;
 scalar_t__ SCHIZO_CTRL_READ_8 (struct schizo_softc*,int ) ;
 scalar_t__ SCHIZO_MODE_TOM ;
 int STX_CTRL_BUS_ERRLOG ;
 int device_get_nameunit (int ) ;
 int panic (char*,int ,char*,unsigned long long) ;

__attribute__((used)) static int
schizo_host_bus(void *arg)
{
 struct schizo_softc *sc = arg;
 uint64_t errlog;

 errlog = SCHIZO_CTRL_READ_8(sc, STX_CTRL_BUS_ERRLOG);
 panic("%s: %s error %#llx", device_get_nameunit(sc->sc_dev),
     sc->sc_mode == SCHIZO_MODE_TOM ? "JBus" : "Safari",
     (unsigned long long)errlog);
 return (FILTER_HANDLED);
}
