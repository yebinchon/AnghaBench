
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dn_heap {scalar_t__ size; int p; } ;


 int M_DN_HEAP ;
 int bzero (struct dn_heap*,int) ;
 int free (int ,int ) ;

void
heap_free(struct dn_heap *h)
{
 if (h->size >0 )
  free(h->p, M_DN_HEAP);
 bzero(h, sizeof(*h) );
}
