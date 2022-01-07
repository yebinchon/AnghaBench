
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int ifi_mtu; } ;
struct if_msghdr {int ifm_index; TYPE_1__ ifm_data; } ;


 int AF_INET6 ;
 int CTL_NET ;
 int NET_RT_IFLIST ;
 int PF_ROUTE ;
 int fatal (char*) ;
 int free (char*) ;
 char* malloc (size_t) ;
 int nitems (int*) ;
 scalar_t__ sysctl (int*,int ,char*,size_t*,int *,int ) ;

__attribute__((used)) static int
getifmtu(int ifindex)
{
 int mib[6];
 char *buf;
 size_t msize;
 struct if_msghdr *ifm;
 int mtu;

 mib[0] = CTL_NET;
 mib[1] = PF_ROUTE;
 mib[2] = 0;
 mib[3] = AF_INET6;
 mib[4] = NET_RT_IFLIST;
 mib[5] = ifindex;
 if (sysctl(mib, nitems(mib), ((void*)0), &msize, ((void*)0), 0) < 0) {
  fatal("sysctl estimate NET_RT_IFLIST");

 }
 if ((buf = malloc(msize)) == ((void*)0)) {
  fatal("malloc");

 }
 if (sysctl(mib, nitems(mib), buf, &msize, ((void*)0), 0) < 0) {
  fatal("sysctl NET_RT_IFLIST");

 }
 ifm = (struct if_msghdr *)(void *)buf;
 mtu = ifm->ifm_data.ifi_mtu;
 if (ifindex != ifm->ifm_index) {
  fatal("ifindex does not match with ifm_index");

 }
 free(buf);
 return mtu;
}
