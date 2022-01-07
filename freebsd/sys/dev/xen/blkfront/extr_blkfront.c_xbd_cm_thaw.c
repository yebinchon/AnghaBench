
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xbd_softc {int dummy; } ;
struct xbd_command {int cm_flags; } ;


 int XBDCF_FROZEN ;
 int XBDF_NONE ;
 int xbd_thaw (struct xbd_softc*,int ) ;

__attribute__((used)) static void
xbd_cm_thaw(struct xbd_softc *sc, struct xbd_command *cm)
{
 if ((cm->cm_flags & XBDCF_FROZEN) == 0)
  return;

 cm->cm_flags &= ~XBDCF_FROZEN;
 xbd_thaw(sc, XBDF_NONE);
}
