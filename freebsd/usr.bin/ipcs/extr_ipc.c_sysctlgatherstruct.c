
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scgs_vector {size_t offset; size_t size; int * sysctl; } ;


 int assert (int) ;
 int err (int,char*,int *) ;
 int errx (int,char*,int *,size_t,size_t) ;
 int sysctlbyname (int *,char*,size_t*,int *,int ) ;

void
sysctlgatherstruct(void *addr, size_t size, struct scgs_vector *vecarr)
{
 struct scgs_vector *xp;
 size_t tsiz;
 int rv;

 for (xp = vecarr; xp->sysctl != ((void*)0); xp++) {
  assert(xp->offset <= size);
  tsiz = xp->size;
  rv = sysctlbyname(xp->sysctl, (char *)addr + xp->offset,
      &tsiz, ((void*)0), 0);
  if (rv == -1)
   err(1, "sysctlbyname: %s", xp->sysctl);
  if (tsiz != xp->size)
   errx(1, "%s size mismatch (expected %zu, got %zu)",
       xp->sysctl, xp->size, tsiz);
 }
}
