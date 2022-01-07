
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t vm_paddr_t ;
typedef char* uintmax_t ;
typedef size_t uint64_t ;
typedef size_t u_int ;
struct dumperinfo {size_t maxiosize; } ;
struct dump_pa {size_t pa_size; size_t pa_start; } ;


 int ECANCELED ;
 int MAXDUMPPGS ;
 size_t PAGE_SHIFT ;
 size_t PAGE_SIZE ;
 scalar_t__ PG2MB (size_t) ;
 int WD_LASTVAL ;
 int cncheckc () ;
 int dump_append (struct dumperinfo*,void*,int ,size_t) ;
 int dumpsys_map_chunk (size_t,size_t,void**) ;
 int dumpsys_unmap_chunk (size_t,size_t,void*) ;
 int dumpsys_wbinv_all () ;
 size_t min (size_t,int ) ;
 int printf (char*,...) ;
 int wdog_kern_pat (int ) ;

int
dumpsys_cb_dumpdata(struct dump_pa *mdp, int seqnr, void *arg)
{
 struct dumperinfo *di = (struct dumperinfo*)arg;
 vm_paddr_t pa;
 void *va;
 uint64_t pgs;
 size_t counter, sz, chunk;
 int c, error;
 u_int maxdumppgs;

 error = 0;
 counter = 0;
 va = ((void*)0);
 pgs = mdp->pa_size / PAGE_SIZE;
 pa = mdp->pa_start;
 maxdumppgs = min(di->maxiosize / PAGE_SIZE, MAXDUMPPGS);
 if (maxdumppgs == 0)
  maxdumppgs = 1;

 printf("  chunk %d: %juMB (%ju pages)", seqnr, (uintmax_t)PG2MB(pgs),
     (uintmax_t)pgs);

 dumpsys_wbinv_all();
 while (pgs) {
  chunk = pgs;
  if (chunk > maxdumppgs)
   chunk = maxdumppgs;
  sz = chunk << PAGE_SHIFT;
  counter += sz;
  if (counter >> 24) {
   printf(" %ju", (uintmax_t)PG2MB(pgs));
   counter &= (1 << 24) - 1;
  }

  dumpsys_map_chunk(pa, chunk, &va);
  wdog_kern_pat(WD_LASTVAL);

  error = dump_append(di, va, 0, sz);
  dumpsys_unmap_chunk(pa, chunk, va);
  if (error)
   break;
  pgs -= chunk;
  pa += sz;


  c = cncheckc();
  if (c == 0x03)
   return (ECANCELED);
  if (c != -1)
   printf(" (CTRL-C to abort) ");
 }
 printf(" ... %s\n", (error) ? "fail" : "ok");
 return (error);
}
