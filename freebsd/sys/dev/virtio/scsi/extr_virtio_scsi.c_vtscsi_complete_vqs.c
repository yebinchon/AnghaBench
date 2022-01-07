
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vtscsi_softc {int dummy; } ;


 int VTSCSI_LOCK (struct vtscsi_softc*) ;
 int VTSCSI_UNLOCK (struct vtscsi_softc*) ;
 int vtscsi_complete_vqs_locked (struct vtscsi_softc*) ;

__attribute__((used)) static void
vtscsi_complete_vqs(struct vtscsi_softc *sc)
{

 VTSCSI_LOCK(sc);
 vtscsi_complete_vqs_locked(sc);
 VTSCSI_UNLOCK(sc);
}
