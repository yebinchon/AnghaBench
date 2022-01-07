
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr {int dummy; } ;


 int NEXT_SA (struct sockaddr*) ;
 int RTAX_MAX ;

__attribute__((used)) static void
get_rtaddrs(int addrs, struct sockaddr *sa, struct sockaddr **rti_info)
{
 int i;

 for (i = 0; i < RTAX_MAX; i++) {
  if (addrs & (1 << i)) {
   rti_info[i] = sa;
   NEXT_SA(sa);
  } else
   rti_info[i] = ((void*)0);
 }
}
