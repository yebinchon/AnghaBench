
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int size; } ;


 int IDX_TO_OFF (int ) ;
 int roundup (int,int) ;
 int shared_page_free ;
 TYPE_1__* shared_page_obj ;

__attribute__((used)) static int
shared_page_alloc_locked(int size, int align)
{
 int res;

 res = roundup(shared_page_free, align);
 if (res + size >= IDX_TO_OFF(shared_page_obj->size))
  res = -1;
 else
  shared_page_free = res + size;
 return (res);
}
