
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct unrhdr {int mtx; } ;
struct unr {int dummy; } ;


 int Free (void*) ;
 void* Malloc (int) ;
 int WARN_GIANTOK ;
 int WARN_SLEEPOK ;
 int WITNESS_WARN (int,int *,char*) ;
 int alloc_unr_specificl (struct unrhdr*,int ,void**,void**) ;
 int mtx_lock (int ) ;
 int mtx_unlock (int ) ;

int
alloc_unr_specific(struct unrhdr *uh, u_int item)
{
 void *p1, *p2;
 int i;

 WITNESS_WARN(WARN_GIANTOK | WARN_SLEEPOK, ((void*)0), "alloc_unr_specific");

 p1 = Malloc(sizeof(struct unr));
 p2 = Malloc(sizeof(struct unr));

 mtx_lock(uh->mtx);
 i = alloc_unr_specificl(uh, item, &p1, &p2);
 mtx_unlock(uh->mtx);

 if (p1 != ((void*)0))
  Free(p1);
 if (p2 != ((void*)0))
  Free(p2);

 return (i);
}
