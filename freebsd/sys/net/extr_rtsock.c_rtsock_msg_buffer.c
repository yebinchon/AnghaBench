
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct walkarg {int w_tmemsize; scalar_t__ w_tmem; int w_op; TYPE_1__* w_req; } ;
struct sockaddr_storage {int dummy; } ;
struct sockaddr_in6 {scalar_t__ sa_family; } ;
struct sockaddr {scalar_t__ sa_family; } ;
struct rt_msghdr {int rtm_type; int rtm_msglen; int rtm_version; } ;
struct rt_addrinfo {int rti_addrs; struct sockaddr_in6** rti_info; } ;
struct ifma_msghdr {int dummy; } ;
struct ifa_msghdrl32 {int dummy; } ;
struct ifa_msghdrl {int dummy; } ;
struct ifa_msghdr {int dummy; } ;
struct if_msghdrl32 {int dummy; } ;
struct if_msghdrl {int dummy; } ;
struct if_msghdr32 {int dummy; } ;
struct if_msghdr {int dummy; } ;
typedef struct sockaddr_in6* caddr_t ;
struct TYPE_2__ {int flags; } ;


 scalar_t__ AF_INET6 ;
 int ALIGN (int) ;
 int ENOBUFS ;
 int NET_RT_IFLISTL ;
 int RTAX_MAX ;




 int RTM_VERSION ;
 int SA_SIZE (struct sockaddr_in6*) ;
 int SA_SIZE32 (struct sockaddr_in6*) ;
 int SCTL_MASK32 ;
 scalar_t__ V_deembed_scopeid ;
 int bcopy (struct sockaddr_in6*,struct sockaddr_in6*,unsigned int) ;
 int bzero (struct sockaddr_in6*,int) ;
 scalar_t__ sa6_recoverscope (struct sockaddr_in6*) ;

__attribute__((used)) static int
rtsock_msg_buffer(int type, struct rt_addrinfo *rtinfo, struct walkarg *w, int *plen)
{
 int i;
 int len, buflen = 0, dlen;
 caddr_t cp = ((void*)0);
 struct rt_msghdr *rtm = ((void*)0);
 switch (type) {

 case 131:
 case 129:
  if (w != ((void*)0) && w->w_op == NET_RT_IFLISTL) {






    len = sizeof(struct ifa_msghdrl);
  } else
   len = sizeof(struct ifa_msghdr);
  break;

 case 130:
  if (w != ((void*)0) && w->w_op == NET_RT_IFLISTL)
   len = sizeof(struct if_msghdrl);
  else
   len = sizeof(struct if_msghdr);
  break;

 case 128:
  len = sizeof(struct ifma_msghdr);
  break;

 default:
  len = sizeof(struct rt_msghdr);
 }

 if (w != ((void*)0)) {
  rtm = (struct rt_msghdr *)w->w_tmem;
  buflen = w->w_tmemsize - len;
  cp = (caddr_t)w->w_tmem + len;
 }

 rtinfo->rti_addrs = 0;
 for (i = 0; i < RTAX_MAX; i++) {
  struct sockaddr *sa;

  if ((sa = rtinfo->rti_info[i]) == ((void*)0))
   continue;
  rtinfo->rti_addrs |= (1 << i);





   dlen = SA_SIZE(sa);
  if (cp != ((void*)0) && buflen >= dlen) {
   bcopy((caddr_t)sa, cp, (unsigned)dlen);
   cp += dlen;
   buflen -= dlen;
  } else if (cp != ((void*)0)) {




   cp = ((void*)0);
  }

  len += dlen;
 }

 if (cp != ((void*)0)) {
  dlen = ALIGN(len) - len;
  if (buflen < dlen)
   cp = ((void*)0);
  else {
   bzero(cp, dlen);
   cp += dlen;
   buflen -= dlen;
  }
 }
 len = ALIGN(len);

 if (cp != ((void*)0)) {

  rtm->rtm_version = RTM_VERSION;
  rtm->rtm_type = type;
  rtm->rtm_msglen = len;
 }

 *plen = len;

 if (w != ((void*)0) && cp == ((void*)0))
  return (ENOBUFS);

 return (0);
}
