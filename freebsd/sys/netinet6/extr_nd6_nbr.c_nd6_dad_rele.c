
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dadq {int dad_ifa; int dad_refcnt; } ;


 int M_IP6NDP ;
 int free (struct dadq*,int ) ;
 int ifa_free (int ) ;
 scalar_t__ refcount_release (int *) ;

__attribute__((used)) static void
nd6_dad_rele(struct dadq *dp)
{

 if (refcount_release(&dp->dad_refcnt)) {
  ifa_free(dp->dad_ifa);
  free(dp, M_IP6NDP);
 }
}
