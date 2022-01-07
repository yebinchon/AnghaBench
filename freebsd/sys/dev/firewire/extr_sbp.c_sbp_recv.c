
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sbp_softc {int dummy; } ;
struct fw_xfer {scalar_t__ sc; } ;


 int SBP_LOCK (struct sbp_softc*) ;
 int SBP_UNLOCK (struct sbp_softc*) ;
 int sbp_recv1 (struct fw_xfer*) ;

__attribute__((used)) static void
sbp_recv(struct fw_xfer *xfer)
{
 struct sbp_softc *sbp;

 sbp = (struct sbp_softc *)xfer->sc;
 SBP_LOCK(sbp);
 sbp_recv1(xfer);
 SBP_UNLOCK(sbp);
}
