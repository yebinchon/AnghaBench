
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sockaddr_in6 {int sin6_len; int sin6_addr; int sin6_family; } ;
struct sockaddr {int dummy; } ;
struct rtentry {int dummy; } ;
struct nd_defrouter {scalar_t__ installed; TYPE_1__* ifp; int rtaddr; } ;
typedef int mask ;
typedef int gate ;
typedef int def ;
struct TYPE_2__ {int if_fib; } ;


 int AF_INET6 ;
 int RTFREE (struct rtentry*) ;
 int RTF_GATEWAY ;
 int RTM_DELETE ;
 int bzero (struct sockaddr_in6*,int) ;
 int in6_rtrequest (int ,struct sockaddr*,struct sockaddr*,struct sockaddr*,int ,struct rtentry**,int ) ;
 int nd6_rtmsg (int ,struct rtentry*) ;

__attribute__((used)) static void
defrouter_delreq(struct nd_defrouter *dr)
{
 struct sockaddr_in6 def, mask, gate;
 struct rtentry *oldrt = ((void*)0);

 bzero(&def, sizeof(def));
 bzero(&mask, sizeof(mask));
 bzero(&gate, sizeof(gate));

 def.sin6_len = mask.sin6_len = gate.sin6_len =
     sizeof(struct sockaddr_in6);
 def.sin6_family = gate.sin6_family = AF_INET6;
 gate.sin6_addr = dr->rtaddr;

 in6_rtrequest(RTM_DELETE, (struct sockaddr *)&def,
     (struct sockaddr *)&gate,
     (struct sockaddr *)&mask, RTF_GATEWAY, &oldrt, dr->ifp->if_fib);
 if (oldrt) {
  nd6_rtmsg(RTM_DELETE, oldrt);
  RTFREE(oldrt);
 }

 dr->installed = 0;
}
