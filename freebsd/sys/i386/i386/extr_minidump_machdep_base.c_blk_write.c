
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ vm_paddr_t ;
typedef int u_int ;
struct dumperinfo {int maxiosize; } ;


 int ECANCELED ;
 int EINVAL ;
 size_t MAXDUMPPGS ;
 size_t PAGE_SHIFT ;
 size_t PAGE_SIZE ;
 int PG2MB (size_t) ;
 int WD_LASTVAL ;
 int blk_flush (struct dumperinfo*) ;
 int cncheckc () ;
 size_t counter ;
 int dump_append (struct dumperinfo*,char*,int ,size_t) ;
 int dump_va ;
 int fragsz ;
 int min (int ,size_t) ;
 int pmap_kenter_temporary (scalar_t__,int) ;
 int printf (char*,...) ;
 size_t progress ;
 int wdog_kern_pat (int ) ;

__attribute__((used)) static int
blk_write(struct dumperinfo *di, char *ptr, vm_paddr_t pa, size_t sz)
{
 size_t len;
 int error, i, c;
 u_int maxdumpsz;

 maxdumpsz = min(di->maxiosize, MAXDUMPPGS * PAGE_SIZE);
 if (maxdumpsz == 0)
  maxdumpsz = PAGE_SIZE;
 error = 0;
 if ((sz % PAGE_SIZE) != 0) {
  printf("size not page aligned\n");
  return (EINVAL);
 }
 if (ptr != ((void*)0) && pa != 0) {
  printf("cant have both va and pa!\n");
  return (EINVAL);
 }
 if (pa != 0 && (((uintptr_t)ptr) % PAGE_SIZE) != 0) {
  printf("address not page aligned\n");
  return (EINVAL);
 }
 if (ptr != ((void*)0)) {

  error = blk_flush(di);
  if (error)
   return (error);
 }
 while (sz) {
  len = maxdumpsz - fragsz;
  if (len > sz)
   len = sz;
  counter += len;
  progress -= len;
  if (counter >> 24) {
   printf(" %lld", PG2MB(progress >> PAGE_SHIFT));
   counter &= (1<<24) - 1;
  }

  wdog_kern_pat(WD_LASTVAL);

  if (ptr) {
   error = dump_append(di, ptr, 0, len);
   if (error)
    return (error);
   ptr += len;
   sz -= len;
  } else {
   for (i = 0; i < len; i += PAGE_SIZE)
    dump_va = pmap_kenter_temporary(pa + i, (i + fragsz) >> PAGE_SHIFT);
   fragsz += len;
   pa += len;
   sz -= len;
   if (fragsz == maxdumpsz) {
    error = blk_flush(di);
    if (error)
     return (error);
   }
  }


  c = cncheckc();
  if (c == 0x03)
   return (ECANCELED);
  if (c != -1)
   printf(" (CTRL-C to abort) ");
 }

 return (0);
}
