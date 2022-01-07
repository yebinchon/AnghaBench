
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ vm_paddr_t ;
typedef size_t u_int ;
struct dumperinfo {int maxiosize; } ;


 int ECANCELED ;
 int EINVAL ;
 size_t MAXDUMPPGS ;
 size_t PAGE_SIZE ;
 scalar_t__ PHYS_TO_DMAP (scalar_t__) ;
 int WD_LASTVAL ;
 int blk_flush (struct dumperinfo*) ;
 int cncheckc () ;
 size_t counter ;
 int dump_append (struct dumperinfo*,char*,int ,size_t) ;
 void* dump_va ;
 int dumpsize ;
 size_t fragsz ;
 size_t min (int ,size_t) ;
 int printf (char*,...) ;
 size_t progress ;
 int report_progress (size_t,int ) ;
 int wdog_kern_pat (int ) ;

__attribute__((used)) static int
blk_write(struct dumperinfo *di, char *ptr, vm_paddr_t pa, size_t sz)
{
 size_t len;
 int error, c;
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
 if ((((uintptr_t)pa) % PAGE_SIZE) != 0) {
  printf("address not page aligned %#lx\n", (uintptr_t)pa);
  return (EINVAL);
 }
 if (ptr != ((void*)0)) {




  error = blk_flush(di);
  if (error != 0)
   return (error);
 }
 while (sz) {
  len = maxdumpsz - fragsz;
  if (len > sz)
   len = sz;
  counter += len;
  progress -= len;
  if (counter >> 22) {
   report_progress(progress, dumpsize);
   counter &= (1 << 22) - 1;
  }

  wdog_kern_pat(WD_LASTVAL);

  if (ptr) {
   error = dump_append(di, ptr, 0, len);
   if (error != 0)
    return (error);
   ptr += len;
   sz -= len;
  } else {
   dump_va = (void *)PHYS_TO_DMAP(pa);
   fragsz += len;
   pa += len;
   sz -= len;
   error = blk_flush(di);
   if (error != 0)
    return (error);
  }


  c = cncheckc();
  if (c == 0x03)
   return (ECANCELED);
  if (c != -1)
   printf(" (CTRL-C to abort) ");
 }

 return (0);
}
