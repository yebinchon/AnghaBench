
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct gxemul_disk_softc {TYPE_1__* sc_provider; int sc_size; TYPE_2__* sc_geom; int sc_dev; } ;
struct TYPE_6__ {int name; struct gxemul_disk_softc* softc; } ;
struct TYPE_5__ {int mediasize; int sectorsize; } ;


 int GXEMUL_DISK_DEV_BLOCKSIZE ;
 int device_get_nameunit (int ) ;
 int g_error_provider (TYPE_1__*,int ) ;
 int g_gxemul_disk_class ;
 TYPE_2__* g_new_geomf (int *,char*,int ) ;
 TYPE_1__* g_new_providerf (TYPE_2__*,char*,int ) ;

__attribute__((used)) static void
gxemul_disk_attach_geom(void *arg, int flag)
{
 struct gxemul_disk_softc *sc;

 sc = arg;

 sc->sc_geom = g_new_geomf(&g_gxemul_disk_class, "%s", device_get_nameunit(sc->sc_dev));
 sc->sc_geom->softc = sc;

 sc->sc_provider = g_new_providerf(sc->sc_geom, "%s", sc->sc_geom->name);
 sc->sc_provider->sectorsize = GXEMUL_DISK_DEV_BLOCKSIZE;
 sc->sc_provider->mediasize = sc->sc_size;
 g_error_provider(sc->sc_provider, 0);
}
