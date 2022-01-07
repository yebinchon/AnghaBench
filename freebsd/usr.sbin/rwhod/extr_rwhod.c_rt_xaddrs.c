
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr {int dummy; } ;
struct rt_addrinfo {int rti_addrs; struct sockaddr** rti_info; } ;
typedef scalar_t__ caddr_t ;


 int RTAX_MAX ;
 scalar_t__ SA_SIZE (struct sockaddr*) ;
 int memset (struct sockaddr**,int ,int) ;

void
rt_xaddrs(caddr_t cp, caddr_t cplim, struct rt_addrinfo *rtinfo)
{
 struct sockaddr *sa;
 int i;

 memset(rtinfo->rti_info, 0, sizeof(rtinfo->rti_info));
 for (i = 0; i < RTAX_MAX && cp < cplim; i++) {
  if ((rtinfo->rti_addrs & (1 << i)) == 0)
   continue;
  sa = (struct sockaddr *)cp;
  rtinfo->rti_info[i] = sa;
  cp += SA_SIZE(sa);
 }
}
