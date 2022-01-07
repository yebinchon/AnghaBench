
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * vm_page_t ;
typedef int u_char ;
struct sf_buf {int dummy; } ;
typedef int off_t ;


 int EDOOFUS ;
 int ENOMEM ;
 int KASSERT (int ,char*) ;





 int PAGE_SIZE ;
 int SFB_CPUPRIVATE ;
 int SFB_NOWAIT ;
 int bcopy (char*,void*,int) ;
 int bzero (char*,int) ;
 int cpu_flush_dcache (char*,int) ;
 int imin (int,unsigned int) ;
 scalar_t__ md_malloc_wait ;
 int memset (char*,int ,int) ;
 int sched_pin () ;
 int sched_unpin () ;
 struct sf_buf* sf_buf_alloc (int *,int) ;
 int sf_buf_free (struct sf_buf*) ;
 scalar_t__ sf_buf_kva (struct sf_buf*) ;

__attribute__((used)) static int
md_malloc_move_ma(vm_page_t **mp, int *ma_offs, unsigned sectorsize,
    void *ptr, u_char fill, int op)
{
 struct sf_buf *sf;
 vm_page_t m, *mp1;
 char *p, first;
 off_t *uc;
 unsigned n;
 int error, i, ma_offs1, sz, first_read;

 m = ((void*)0);
 error = 0;
 sf = ((void*)0);

  first = 0;
  first_read = 0;
  uc = ptr;
  mp1 = *mp;
  ma_offs1 = *ma_offs;

 sched_pin();
 for (n = sectorsize; n != 0; n -= sz) {
  sz = imin(PAGE_SIZE - *ma_offs, n);
  if (m != **mp) {
   if (sf != ((void*)0))
    sf_buf_free(sf);
   m = **mp;
   sf = sf_buf_alloc(m, SFB_CPUPRIVATE |
       (md_malloc_wait ? 0 : SFB_NOWAIT));
   if (sf == ((void*)0)) {
    error = ENOMEM;
    break;
   }
  }
  p = (char *)sf_buf_kva(sf) + *ma_offs;
  switch (op) {
  case 128:
   bzero(p, sz);
   break;
  case 131:
   memset(p, fill, sz);
   break;
  case 130:
   bcopy(ptr, p, sz);
   cpu_flush_dcache(p, sz);
   break;
  case 129:
   bcopy(p, ptr, sz);
   break;
  case 132:
   for (i = 0; i < sz; i++, p++) {
    if (!first_read) {
     *uc = (u_char)*p;
     first = *p;
     first_read = 1;
    } else if (*p != first) {
     error = EDOOFUS;
     break;
    }
   }
   break;
  default:
   KASSERT(0, ("md_malloc_move_ma unknown op %d\n", op));
   break;
  }
  if (error != 0)
   break;
  *ma_offs += sz;
  *ma_offs %= PAGE_SIZE;
  if (*ma_offs == 0)
   (*mp)++;
  ptr = (char *)ptr + sz;
 }

 if (sf != ((void*)0))
  sf_buf_free(sf);
 sched_unpin();
 if (op == 132 && error != 0) {
  *mp = mp1;
  *ma_offs = ma_offs1;
 }
 return (error);
}
