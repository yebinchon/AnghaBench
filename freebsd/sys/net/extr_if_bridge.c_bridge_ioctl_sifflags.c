
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ifbreq {int ifbr_ifsflags; int ifbr_ifsname; } ;
struct bstp_port {int dummy; } ;
struct bridge_softc {int dummy; } ;
struct bridge_iflist {int bif_flags; struct bstp_port bif_stp; } ;


 int EINVAL ;
 int ENOENT ;
 int IFBIFMASK ;
 int IFBIF_BSTP_AUTOEDGE ;
 int IFBIF_BSTP_AUTOPTP ;
 int IFBIF_BSTP_EDGE ;
 int IFBIF_BSTP_PTP ;
 int IFBIF_SPAN ;
 int IFBIF_STP ;
 struct bridge_iflist* bridge_lookup_member (struct bridge_softc*,int ) ;
 int bstp_disable (struct bstp_port*) ;
 int bstp_enable (struct bstp_port*) ;
 int bstp_set_autoedge (struct bstp_port*,int) ;
 int bstp_set_autoptp (struct bstp_port*,int) ;
 int bstp_set_edge (struct bstp_port*,int) ;
 int bstp_set_ptp (struct bstp_port*,int) ;

__attribute__((used)) static int
bridge_ioctl_sifflags(struct bridge_softc *sc, void *arg)
{
 struct ifbreq *req = arg;
 struct bridge_iflist *bif;
 struct bstp_port *bp;
 int error;

 bif = bridge_lookup_member(sc, req->ifbr_ifsname);
 if (bif == ((void*)0))
  return (ENOENT);
 bp = &bif->bif_stp;

 if (req->ifbr_ifsflags & IFBIF_SPAN)

  return (EINVAL);

 if (req->ifbr_ifsflags & IFBIF_STP) {
  if ((bif->bif_flags & IFBIF_STP) == 0) {
   error = bstp_enable(&bif->bif_stp);
   if (error)
    return (error);
  }
 } else {
  if ((bif->bif_flags & IFBIF_STP) != 0)
   bstp_disable(&bif->bif_stp);
 }


 bstp_set_edge(bp, req->ifbr_ifsflags & IFBIF_BSTP_EDGE ? 1 : 0);
 bstp_set_autoedge(bp, req->ifbr_ifsflags & IFBIF_BSTP_AUTOEDGE ? 1 : 0);
 bstp_set_ptp(bp, req->ifbr_ifsflags & IFBIF_BSTP_PTP ? 1 : 0);
 bstp_set_autoptp(bp, req->ifbr_ifsflags & IFBIF_BSTP_AUTOPTP ? 1 : 0);


 bif->bif_flags = req->ifbr_ifsflags & IFBIFMASK;

 return (0);
}
