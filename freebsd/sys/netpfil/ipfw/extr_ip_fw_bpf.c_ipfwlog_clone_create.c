
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ifnet {int if_flags; int if_mtu; int if_hdrlen; int if_output; int if_ioctl; } ;
struct if_clone {int dummy; } ;
typedef int caddr_t ;


 int DLT_PFLOG ;
 int EEXIST ;
 int ENOSPC ;
 int IFF_MULTICAST ;
 int IFF_SIMPLEX ;
 int IFF_UP ;
 int IFT_PFLOG ;
 int PFLOG_HDRLEN ;
 struct ifnet* V_pflog_if ;
 int bpfattach (struct ifnet*,int ,int ) ;
 int bpfdetach (struct ifnet*) ;
 struct ifnet* if_alloc (int ) ;
 int if_attach (struct ifnet*) ;
 int if_detach (struct ifnet*) ;
 int if_free (struct ifnet*) ;
 int if_initname (struct ifnet*,int ,int) ;
 int ipfw_bpf_ioctl ;
 int ipfw_bpf_output ;
 int ipfwlogname ;

__attribute__((used)) static int
ipfwlog_clone_create(struct if_clone *ifc, int unit, caddr_t params)
{
 struct ifnet *ifp;

 ifp = if_alloc(IFT_PFLOG);
 if (ifp == ((void*)0))
  return (ENOSPC);
 if_initname(ifp, ipfwlogname, unit);
 ifp->if_flags = IFF_UP | IFF_SIMPLEX | IFF_MULTICAST;
 ifp->if_mtu = 65536;
 ifp->if_ioctl = ipfw_bpf_ioctl;
 ifp->if_output = ipfw_bpf_output;
 ifp->if_hdrlen = PFLOG_HDRLEN;
 if_attach(ifp);
 bpfattach(ifp, DLT_PFLOG, PFLOG_HDRLEN);
 if (V_pflog_if != ((void*)0)) {
  bpfdetach(ifp);
  if_detach(ifp);
  if_free(ifp);
  return (EEXIST);
 }
 V_pflog_if = ifp;
 return (0);
}
