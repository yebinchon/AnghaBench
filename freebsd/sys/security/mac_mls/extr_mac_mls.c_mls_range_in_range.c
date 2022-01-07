
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mac_mls {int mm_rangelow; int mm_rangehigh; } ;


 scalar_t__ mls_dominate_element (int *,int *) ;

__attribute__((used)) static int
mls_range_in_range(struct mac_mls *rangea, struct mac_mls *rangeb)
{

 return (mls_dominate_element(&rangeb->mm_rangehigh,
     &rangea->mm_rangehigh) &&
     mls_dominate_element(&rangea->mm_rangelow,
     &rangeb->mm_rangelow));
}
