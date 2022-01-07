
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dn_heap {int elements; TYPE_1__* p; } ;
struct TYPE_2__ {void* object; } ;


 int HEAP_SCAN_DEL ;
 int HEAP_SCAN_END ;
 int heapify (struct dn_heap*) ;

int
heap_scan(struct dn_heap *h, int (*fn)(void *, uintptr_t),
 uintptr_t arg)
{
 int i, ret, found;

 for (i = found = 0 ; i < h->elements ;) {
  ret = fn(h->p[i].object, arg);
  if (ret & HEAP_SCAN_DEL) {
   h->elements-- ;
   h->p[i] = h->p[h->elements] ;
   found++ ;
  } else
   i++ ;
  if (ret & HEAP_SCAN_END)
   break;
 }
 if (found)
  heapify(h);
 return found;
}
