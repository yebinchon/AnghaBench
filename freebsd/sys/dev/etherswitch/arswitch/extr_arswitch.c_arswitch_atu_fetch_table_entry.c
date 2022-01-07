
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int count; int * entries; } ;
struct arswitch_softc {TYPE_1__ atu; } ;
struct TYPE_6__ {int id; } ;
typedef TYPE_2__ etherswitch_atu_entry_t ;
typedef int device_t ;


 int ARSWITCH_LOCK (struct arswitch_softc*) ;
 int ARSWITCH_UNLOCK (struct arswitch_softc*) ;
 int ENOENT ;
 struct arswitch_softc* device_get_softc (int ) ;
 int memcpy (TYPE_2__*,int *,int) ;

__attribute__((used)) static int
arswitch_atu_fetch_table_entry(device_t dev, etherswitch_atu_entry_t *e)
{
 struct arswitch_softc *sc;
 int id;

 sc = device_get_softc(dev);
 id = e->id;

 ARSWITCH_LOCK(sc);
 if (id > sc->atu.count) {
  ARSWITCH_UNLOCK(sc);
  return (ENOENT);
 }

 memcpy(e, &sc->atu.entries[id], sizeof(*e));
 ARSWITCH_UNLOCK(sc);
 return (0);
}
