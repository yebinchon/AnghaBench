
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct walkarg {TYPE_1__* w_req; scalar_t__ w_tmem; } ;
struct rt_addrinfo {int rti_addrs; } ;
struct ifnet {int if_flags; int if_drv_flags; int if_index; } ;
struct if_data {int dummy; } ;
struct if_msghdr32 {int ifm_flags; struct if_data ifm_data; scalar_t__ _ifm_spare1; int ifm_index; int ifm_addrs; } ;
struct if_msghdr {int ifm_flags; struct if_data ifm_data; scalar_t__ _ifm_spare1; int ifm_index; int ifm_addrs; } ;
typedef int caddr_t ;
struct TYPE_2__ {int flags; } ;


 int SCTL_MASK32 ;
 int SYSCTL_OUT (TYPE_1__*,int ,int) ;
 int memcpy (struct if_data*,struct if_data const*,int) ;

__attribute__((used)) static int
sysctl_iflist_ifm(struct ifnet *ifp, const struct if_data *src_ifd,
    struct rt_addrinfo *info, struct walkarg *w, int len)
{
 struct if_msghdr *ifm;
 struct if_data *ifd;

 ifm = (struct if_msghdr *)w->w_tmem;
 {
  ifm->ifm_addrs = info->rti_addrs;
  ifm->ifm_flags = ifp->if_flags | ifp->if_drv_flags;
  ifm->ifm_index = ifp->if_index;
  ifm->_ifm_spare1 = 0;
  ifd = &ifm->ifm_data;
 }

 memcpy(ifd, src_ifd, sizeof(*ifd));

 return (SYSCTL_OUT(w->w_req, (caddr_t)ifm, len));
}
