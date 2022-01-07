
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xbdc_flag_t ;
struct xbd_softc {int dummy; } ;
struct xbd_command {int cm_flags; } ;


 int XBDCF_FROZEN ;
 int XBDF_NONE ;
 int xbd_freeze (struct xbd_softc*,int ) ;

__attribute__((used)) static void
xbd_cm_freeze(struct xbd_softc *sc, struct xbd_command *cm, xbdc_flag_t cm_flag)
{
 if ((cm->cm_flags & XBDCF_FROZEN) != 0)
  return;

 cm->cm_flags |= XBDCF_FROZEN|cm_flag;
 xbd_freeze(sc, XBDF_NONE);
}
