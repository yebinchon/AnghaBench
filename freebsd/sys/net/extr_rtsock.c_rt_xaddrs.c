
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr_in6 {int dummy; } ;
struct sockaddr {scalar_t__ sa_len; scalar_t__ sa_family; } ;
struct rt_addrinfo {int rti_addrs; struct sockaddr** rti_info; } ;
typedef scalar_t__ caddr_t ;


 scalar_t__ AF_INET6 ;
 int EINVAL ;
 int RTAX_MAX ;
 scalar_t__ SA_SIZE (struct sockaddr*) ;
 int V_ip6_use_defzone ;
 int sa6_embedscope (struct sockaddr_in6*,int ) ;
 struct sockaddr sa_zero ;

__attribute__((used)) static int
rt_xaddrs(caddr_t cp, caddr_t cplim, struct rt_addrinfo *rtinfo)
{
 struct sockaddr *sa;
 int i;

 for (i = 0; i < RTAX_MAX && cp < cplim; i++) {
  if ((rtinfo->rti_addrs & (1 << i)) == 0)
   continue;
  sa = (struct sockaddr *)cp;



  if (cp + sa->sa_len > cplim)
   return (EINVAL);







  if (sa->sa_len == 0) {
   rtinfo->rti_info[i] = &sa_zero;
   return (0);
  }






  rtinfo->rti_info[i] = sa;
  cp += SA_SIZE(sa);
 }
 return (0);
}
