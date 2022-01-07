
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ pri; } ;
typedef TYPE_1__ weight_t ;
typedef scalar_t__ int32_t ;



__attribute__((used)) static int
weight_compare(const void *n1, const void *n2)
{
 int32_t k1 = ((const weight_t *)n1)->pri;
 int32_t k2 = ((const weight_t *)n2)->pri;

 return (k1 < k2 ? -1 : k1 > k2 ? 1 : 0);
}
