
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct walkarg {scalar_t__ w_tmem; int w_req; } ;
struct rt_addrinfo {int rti_addrs; } ;
struct ifaddr {TYPE_1__* ifa_ifp; int ifa_flags; } ;
struct ifa_msghdr {int ifam_metric; scalar_t__ _ifam_spare1; int ifam_index; int ifam_flags; int ifam_addrs; } ;
struct TYPE_2__ {int if_metric; int if_index; } ;


 int SYSCTL_OUT (int ,scalar_t__,int) ;

__attribute__((used)) static int
sysctl_iflist_ifam(struct ifaddr *ifa, struct rt_addrinfo *info,
    struct walkarg *w, int len)
{
 struct ifa_msghdr *ifam;

 ifam = (struct ifa_msghdr *)w->w_tmem;
 ifam->ifam_addrs = info->rti_addrs;
 ifam->ifam_flags = ifa->ifa_flags;
 ifam->ifam_index = ifa->ifa_ifp->if_index;
 ifam->_ifam_spare1 = 0;
 ifam->ifam_metric = ifa->ifa_ifp->if_metric;

 return (SYSCTL_OUT(w->w_req, w->w_tmem, len));
}
