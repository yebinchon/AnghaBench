
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dn_heap {int elements; } ;


 int heap_insert (struct dn_heap*,int,int *) ;

__attribute__((used)) static void
heapify(struct dn_heap *h)
{
 int i;

 for (i = 0; i < h->elements; i++ )
  heap_insert(h, i , ((void*)0));
}
