
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mac_lomac {int ml_rangelow; int ml_rangehigh; } ;


 scalar_t__ lomac_dominate_element (int *,int *) ;

__attribute__((used)) static int
lomac_range_in_range(struct mac_lomac *rangea, struct mac_lomac *rangeb)
{

 return (lomac_dominate_element(&rangeb->ml_rangehigh,
     &rangea->ml_rangehigh) &&
     lomac_dominate_element(&rangea->ml_rangelow,
     &rangeb->ml_rangelow));
}
