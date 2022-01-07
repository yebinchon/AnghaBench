
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mem_desc {int base; } ;



__attribute__((used)) static int
mem_desc_cmp(const void *a, const void *b)
{
 return ((const struct mem_desc *)a)->base -
        ((const struct mem_desc *)b)->base;
}
