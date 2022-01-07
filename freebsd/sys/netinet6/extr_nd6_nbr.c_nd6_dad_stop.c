
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ifaddr {int dummy; } ;
struct dadq {int dummy; } ;


 int nd6_dad_del (struct dadq*) ;
 struct dadq* nd6_dad_find (struct ifaddr*,int *) ;
 int nd6_dad_rele (struct dadq*) ;
 int nd6_dad_stoptimer (struct dadq*) ;

void
nd6_dad_stop(struct ifaddr *ifa)
{
 struct dadq *dp;

 dp = nd6_dad_find(ifa, ((void*)0));
 if (!dp) {

  return;
 }

 nd6_dad_stoptimer(dp);
 nd6_dad_del(dp);


 nd6_dad_rele(dp);
}
