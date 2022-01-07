
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int ifq_maxlen; } ;
struct ifnet {int if_hdrlen; TYPE_1__ if_snd; int if_start; int if_output; int if_ioctl; int if_mtu; } ;
struct if_clone {int dummy; } ;
typedef int caddr_t ;


 int DLT_PFLOG ;
 int EINVAL ;
 int ENOSPC ;
 int IFT_PFLOG ;
 int PFLOGIFS_MAX ;
 int PFLOGMTU ;
 int PFLOG_HDRLEN ;
 struct ifnet** V_pflogifs ;
 int bpfattach (struct ifnet*,int ,int ) ;
 struct ifnet* if_alloc (int ) ;
 int if_attach (struct ifnet*) ;
 int if_initname (struct ifnet*,int ,int) ;
 int ifqmaxlen ;
 int pflogioctl ;
 int pflogname ;
 int pflogoutput ;
 int pflogstart ;

__attribute__((used)) static int
pflog_clone_create(struct if_clone *ifc, int unit, caddr_t param)
{
 struct ifnet *ifp;

 if (unit >= PFLOGIFS_MAX)
  return (EINVAL);

 ifp = if_alloc(IFT_PFLOG);
 if (ifp == ((void*)0)) {
  return (ENOSPC);
 }
 if_initname(ifp, pflogname, unit);
 ifp->if_mtu = PFLOGMTU;
 ifp->if_ioctl = pflogioctl;
 ifp->if_output = pflogoutput;
 ifp->if_start = pflogstart;
 ifp->if_snd.ifq_maxlen = ifqmaxlen;
 ifp->if_hdrlen = PFLOG_HDRLEN;
 if_attach(ifp);

 bpfattach(ifp, DLT_PFLOG, PFLOG_HDRLEN);

 V_pflogifs[unit] = ifp;

 return (0);
}
