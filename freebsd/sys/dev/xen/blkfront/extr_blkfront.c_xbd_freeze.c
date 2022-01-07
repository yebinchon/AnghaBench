
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xbd_flag_t ;
struct xbd_softc {int xbd_flags; int xbd_qfrozen_cnt; } ;


 int XBDF_NONE ;

__attribute__((used)) static void
xbd_freeze(struct xbd_softc *sc, xbd_flag_t xbd_flag)
{
 if (xbd_flag != XBDF_NONE && (sc->xbd_flags & xbd_flag) != 0)
  return;

 sc->xbd_flags |= xbd_flag;
 sc->xbd_qfrozen_cnt++;
}
