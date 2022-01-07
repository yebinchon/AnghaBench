
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * uma_free ;
typedef int * uma_alloc ;
typedef int uintmax_t ;
typedef int u_int32_t ;
struct busdma_bufzone {int size; int * umazone; int name; } ;
struct busdma_bufalloc {int min_size; int num_zones; struct busdma_bufzone* buf_zones; } ;
typedef struct busdma_bufalloc* busdma_bufalloc_t ;
typedef int bus_size_t ;


 int MAX (int ,int) ;
 int MAX_ZONE_BUFSIZE ;
 int MIN_ZONE_BUFSIZE ;
 int M_DEVBUF ;
 int M_WAITOK ;
 int M_ZERO ;
 int busdma_bufalloc_destroy (struct busdma_bufalloc*) ;
 struct busdma_bufalloc* malloc (int,int ,int) ;
 int nitems (struct busdma_bufzone*) ;
 int snprintf (int ,int,char*,char const*,int ) ;
 int * uma_zcreate (int ,int,int *,int *,int *,int *,int,int ) ;
 int uma_zone_set_allocf (int *,int *) ;
 int uma_zone_set_freef (int *,int *) ;

busdma_bufalloc_t
busdma_bufalloc_create(const char *name, bus_size_t minimum_alignment,
    uma_alloc alloc_func, uma_free free_func, u_int32_t zcreate_flags)
{
 struct busdma_bufalloc *ba;
 struct busdma_bufzone *bz;
 int i;
 bus_size_t cursize;

 ba = malloc(sizeof(struct busdma_bufalloc), M_DEVBUF,
     M_ZERO | M_WAITOK);

 ba->min_size = MAX(MIN_ZONE_BUFSIZE, minimum_alignment);
 for (i = 0, bz = ba->buf_zones, cursize = ba->min_size;
     i < nitems(ba->buf_zones) && cursize <= MAX_ZONE_BUFSIZE;
     ++i, ++bz, cursize <<= 1) {
  snprintf(bz->name, sizeof(bz->name), "dma %.10s %ju",
      name, (uintmax_t)cursize);
  bz->size = cursize;
  bz->umazone = uma_zcreate(bz->name, bz->size,
      ((void*)0), ((void*)0), ((void*)0), ((void*)0), bz->size - 1, zcreate_flags);
  if (bz->umazone == ((void*)0)) {
   busdma_bufalloc_destroy(ba);
   return (((void*)0));
  }
  if (alloc_func != ((void*)0))
   uma_zone_set_allocf(bz->umazone, alloc_func);
  if (free_func != ((void*)0))
   uma_zone_set_freef(bz->umazone, free_func);
  ++ba->num_zones;
 }

 return (ba);
}
