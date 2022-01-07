
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct malloc_type {int dummy; } ;


 int malloc_type_zone_allocated (struct malloc_type*,unsigned long,int) ;

void
malloc_type_allocated(struct malloc_type *mtp, unsigned long size)
{

 if (size > 0)
  malloc_type_zone_allocated(mtp, size, -1);
}
