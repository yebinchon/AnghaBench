
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct netmap_obj_pool {unsigned int* bitmap; int objtotal; int bitmap_slots; int objfree; int name; scalar_t__ invalid_bitmap; } ;


 int ENOMEM ;
 int NM_DEBUG_MEM ;
 int memset (unsigned int*,int ,int) ;
 int netmap_debug ;
 scalar_t__ netmap_verbose ;
 scalar_t__ nm_isset (scalar_t__,int) ;
 unsigned int* nm_os_malloc (int) ;
 int nm_prerr (char*,int,...) ;
 int nm_prinf (char*,int ,int) ;

__attribute__((used)) static int
netmap_init_obj_allocator_bitmap(struct netmap_obj_pool *p)
{
 u_int n, j;

 if (p->bitmap == ((void*)0)) {

  n = (p->objtotal + 31) / 32;
  p->bitmap = nm_os_malloc(sizeof(p->bitmap[0]) * n);
  if (p->bitmap == ((void*)0)) {
   nm_prerr("Unable to create bitmap (%d entries) for allocator '%s'", (int)n,
       p->name);
   return ENOMEM;
  }
  p->bitmap_slots = n;
 } else {
  memset(p->bitmap, 0, p->bitmap_slots * sizeof(p->bitmap[0]));
 }

 p->objfree = 0;





 for (j = 0; j < p->objtotal; j++) {
  if (p->invalid_bitmap && nm_isset(p->invalid_bitmap, j)) {
   if (netmap_debug & NM_DEBUG_MEM)
    nm_prinf("skipping %s %d", p->name, j);
   continue;
  }
  p->bitmap[ (j>>5) ] |= ( 1U << (j & 31U) );
  p->objfree++;
 }

 if (netmap_verbose)
  nm_prinf("%s free %u", p->name, p->objfree);
 if (p->objfree == 0) {
  if (netmap_verbose)
   nm_prerr("%s: no objects available", p->name);
  return ENOMEM;
 }

 return 0;
}
