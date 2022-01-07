
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct t4_range {int start; } ;



__attribute__((used)) static int
t4_range_cmp(const void *a, const void *b)
{
 return ((const struct t4_range *)a)->start -
        ((const struct t4_range *)b)->start;
}
