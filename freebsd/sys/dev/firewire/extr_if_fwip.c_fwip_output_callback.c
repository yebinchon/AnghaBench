
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * ifq_head; } ;
struct ifnet {TYPE_1__ if_snd; } ;
struct TYPE_4__ {struct ifnet* fwip_ifp; } ;
struct fwip_softc {int xferlist; TYPE_2__ fw_softc; } ;
struct fw_xfer {scalar_t__ resp; int mbuf; scalar_t__ sc; } ;


 int FWIPDEBUG (struct ifnet*,char*,scalar_t__) ;
 int FWIP_LOCK (struct fwip_softc*) ;
 int FWIP_UNLOCK (struct fwip_softc*) ;
 int IFCOUNTER_OERRORS ;
 int STAILQ_INSERT_TAIL (int *,struct fw_xfer*,int ) ;
 int fw_xfer_unload (struct fw_xfer*) ;
 int fwip_start (struct ifnet*) ;
 int if_inc_counter (struct ifnet*,int ,int) ;
 int link ;
 int m_freem (int ) ;
 int splimp () ;
 int splx (int) ;

__attribute__((used)) static void
fwip_output_callback(struct fw_xfer *xfer)
{
 struct fwip_softc *fwip;
 struct ifnet *ifp;
 int s;

 fwip = (struct fwip_softc *)xfer->sc;
 ifp = fwip->fw_softc.fwip_ifp;

 FWIPDEBUG(ifp, "resp = %d\n", xfer->resp);
 if (xfer->resp != 0)
  if_inc_counter(ifp, IFCOUNTER_OERRORS, 1);
 m_freem(xfer->mbuf);
 fw_xfer_unload(xfer);

 s = splimp();
 FWIP_LOCK(fwip);
 STAILQ_INSERT_TAIL(&fwip->xferlist, xfer, link);
 FWIP_UNLOCK(fwip);
 splx(s);


 if (ifp->if_snd.ifq_head != ((void*)0)) {
  fwip_start(ifp);
 }
}
