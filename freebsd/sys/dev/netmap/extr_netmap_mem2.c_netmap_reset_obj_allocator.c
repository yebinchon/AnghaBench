
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u_int ;
struct netmap_obj_pool {size_t objtotal; scalar_t__ alloc_done; scalar_t__ objfree; scalar_t__ numclusters; scalar_t__ memtotal; TYPE_1__* lut; int _clustsize; scalar_t__ _clustentries; int * invalid_bitmap; int * bitmap; } ;
struct TYPE_2__ {int vaddr; } ;


 int M_NETMAP ;
 int contigfree (int ,int ,int ) ;
 int nm_free_lut (TYPE_1__*,size_t) ;
 int nm_os_free (int *) ;

__attribute__((used)) static void
netmap_reset_obj_allocator(struct netmap_obj_pool *p)
{

 if (p == ((void*)0))
  return;
 if (p->bitmap)
  nm_os_free(p->bitmap);
 p->bitmap = ((void*)0);
 if (p->invalid_bitmap)
  nm_os_free(p->invalid_bitmap);
 p->invalid_bitmap = ((void*)0);
 if (!p->alloc_done) {



  return;
 }
 if (p->lut) {
  u_int i;







  for (i = 0; i < p->objtotal; i += p->_clustentries) {
   contigfree(p->lut[i].vaddr, p->_clustsize, M_NETMAP);
  }
  nm_free_lut(p->lut, p->objtotal);
 }
 p->lut = ((void*)0);
 p->objtotal = 0;
 p->memtotal = 0;
 p->numclusters = 0;
 p->objfree = 0;
 p->alloc_done = 0;
}
