
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct libalias {int dummy; } ;
struct ip {int ip_dst; int ip_sum; } ;


 int DifferentialChecksum (int *,int *,int *,int) ;
 int LIBALIAS_LOCK (struct libalias*) ;
 int LIBALIAS_UNLOCK (struct libalias*) ;

void
LibAliasFragmentIn(struct libalias *la, char *ptr,


    char *ptr_fragment

)
{
 struct ip *pip;
 struct ip *fpip;

 LIBALIAS_LOCK(la);
 (void)la;
 pip = (struct ip *)ptr;
 fpip = (struct ip *)ptr_fragment;

 DifferentialChecksum(&fpip->ip_sum,
     &pip->ip_dst, &fpip->ip_dst, 2);
 fpip->ip_dst = pip->ip_dst;
 LIBALIAS_UNLOCK(la);
}
