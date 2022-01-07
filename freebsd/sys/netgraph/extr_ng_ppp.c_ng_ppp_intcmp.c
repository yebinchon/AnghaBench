
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int
ng_ppp_intcmp(void *latency, const void *v1, const void *v2)
{
 const int index1 = *((const int *) v1);
 const int index2 = *((const int *) v2);

 return ((int *)latency)[index1] - ((int *)latency)[index2];
}
