
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mac_biba {int mb_rangelow; int mb_rangehigh; } ;


 scalar_t__ biba_dominate_element (int *,int *) ;

__attribute__((used)) static int
biba_range_in_range(struct mac_biba *rangea, struct mac_biba *rangeb)
{

 return (biba_dominate_element(&rangeb->mb_rangehigh,
     &rangea->mb_rangehigh) &&
     biba_dominate_element(&rangea->mb_rangelow,
     &rangeb->mb_rangelow));
}
