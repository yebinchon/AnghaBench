
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef void* uint64_t ;
struct dn_heap_entry {int dummy; } ;
struct dn_heap {int elements; int size; TYPE_1__* p; } ;
struct TYPE_3__ {void* key; void* object; } ;


 scalar_t__ DN_KEY_LT (void*,void*) ;
 int HEAP_FATHER (int) ;
 int HEAP_SWAP (TYPE_1__,TYPE_1__,struct dn_heap_entry) ;
 int SET_OFFSET (struct dn_heap*,int) ;
 scalar_t__ heap_resize (struct dn_heap*,int) ;

int
heap_insert(struct dn_heap *h, uint64_t key1, void *p)
{
 int son = h->elements;


 if (p == ((void*)0)) {
  son = key1;
 } else {
  son = h->elements;
  if (son == h->size)

   if (heap_resize(h, h->elements+16) )
    return 1;
  h->p[son].object = p;
  h->p[son].key = key1;
  h->elements++;
 }

 while (son > 0) {
  int father = HEAP_FATHER(son);
  struct dn_heap_entry tmp;

  if (DN_KEY_LT( h->p[father].key, h->p[son].key ) )
   break;

  HEAP_SWAP(h->p[son], h->p[father], tmp);
  SET_OFFSET(h, son);
  son = father;
 }
 SET_OFFSET(h, son);
 return 0;
}
