
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dn_heap {int ofs; scalar_t__ elements; } ;


 scalar_t__ heap_resize (struct dn_heap*,int) ;

int
heap_init(struct dn_heap *h, int size, int ofs)
{
 if (heap_resize(h, size))
  return 1;
 h->elements = 0;
 h->ofs = ofs;
 return 0;
}
