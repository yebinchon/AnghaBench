
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct alloc_state {size_t nr; char* p; char** slabs; int count; scalar_t__ slab_nr; int slab_alloc; } ;


 int ALLOC_GROW (char**,scalar_t__,int ) ;
 size_t BLOCKING ;
 int memset (void*,int ,size_t) ;
 char* xmalloc (size_t) ;

__attribute__((used)) static inline void *alloc_node(struct alloc_state *s, size_t node_size)
{
 void *ret;

 if (!s->nr) {
  s->nr = BLOCKING;
  s->p = xmalloc(BLOCKING * node_size);

  ALLOC_GROW(s->slabs, s->slab_nr + 1, s->slab_alloc);
  s->slabs[s->slab_nr++] = s->p;
 }
 s->nr--;
 s->count++;
 ret = s->p;
 s->p = (char *)s->p + node_size;
 memset(ret, 0, node_size);

 return ret;
}
