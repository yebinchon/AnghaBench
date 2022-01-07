
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dumpreg {int addr; } ;



__attribute__((used)) static int
regcompar(const void *a, const void *b)
{
 const struct dumpreg *ra = *(const struct dumpreg **)a;
 const struct dumpreg *rb = *(const struct dumpreg **)b;
 return ra->addr - rb->addr;
}
