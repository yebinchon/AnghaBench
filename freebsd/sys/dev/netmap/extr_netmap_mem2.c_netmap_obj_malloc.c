
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t uint32_t ;
typedef scalar_t__ u_int ;
struct netmap_obj_pool {scalar_t__ _objsize; scalar_t__ objfree; size_t bitmap_slots; size_t* bitmap; int name; TYPE_1__* lut; } ;
struct TYPE_2__ {void* vaddr; } ;


 int nm_prdis (char*,int ,size_t,size_t,void*) ;
 int nm_prerr (char*,int ,...) ;

__attribute__((used)) static void *
netmap_obj_malloc(struct netmap_obj_pool *p, u_int len, uint32_t *start, uint32_t *index)
{
 uint32_t i = 0;
 uint32_t mask, j = 0;
 void *vaddr = ((void*)0);

 if (len > p->_objsize) {
  nm_prerr("%s request size %d too large", p->name, len);
  return ((void*)0);
 }

 if (p->objfree == 0) {
  nm_prerr("no more %s objects", p->name);
  return ((void*)0);
 }
 if (start)
  i = *start;


 while (vaddr == ((void*)0) && i < p->bitmap_slots) {
  uint32_t cur = p->bitmap[i];
  if (cur == 0) {
   i++;
   continue;
  }

  for (j = 0, mask = 1; (cur & mask) == 0; j++, mask <<= 1)
   ;

  p->bitmap[i] &= ~mask;
  p->objfree--;

  vaddr = p->lut[i * 32 + j].vaddr;
  if (index)
   *index = i * 32 + j;
 }
 nm_prdis("%s allocator: allocated object @ [%d][%d]: vaddr %p",p->name, i, j, vaddr);

 if (start)
  *start = i;
 return vaddr;
}
