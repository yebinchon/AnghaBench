
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ key; } ;
typedef TYPE_1__ subst_t ;
typedef scalar_t__ int32_t ;



__attribute__((used)) static int
subst_compare(const void *n1, const void *n2)
{
 int32_t k1 = ((const subst_t *)n1)->key;
 int32_t k2 = ((const subst_t *)n2)->key;

 return (k1 < k2 ? -1 : k1 > k2 ? 1 : 0);
}
