
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct upgt_softc {int dummy; } ;


 int UPGT_LOCK (struct upgt_softc*) ;
 int UPGT_UNLOCK (struct upgt_softc*) ;
 int upgt_abort_xfers_locked (struct upgt_softc*) ;

__attribute__((used)) static void
upgt_abort_xfers(struct upgt_softc *sc)
{

 UPGT_LOCK(sc);
 upgt_abort_xfers_locked(sc);
 UPGT_UNLOCK(sc);
}
