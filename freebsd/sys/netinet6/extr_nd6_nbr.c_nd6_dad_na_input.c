
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ifaddr {int dummy; } ;
struct dadq {int dad_na_icount; } ;


 struct dadq* nd6_dad_find (struct ifaddr*,int *) ;
 int nd6_dad_rele (struct dadq*) ;
 int panic (char*) ;

__attribute__((used)) static void
nd6_dad_na_input(struct ifaddr *ifa)
{
 struct dadq *dp;

 if (ifa == ((void*)0))
  panic("ifa == NULL in nd6_dad_na_input");

 dp = nd6_dad_find(ifa, ((void*)0));
 if (dp != ((void*)0)) {
  dp->dad_na_icount++;
  nd6_dad_rele(dp);
 }
}
