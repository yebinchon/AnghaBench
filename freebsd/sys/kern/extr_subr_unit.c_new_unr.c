
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct unrhdr {int alloc; } ;


 int KASSERT (int,char*) ;

__attribute__((used)) static __inline void *
new_unr(struct unrhdr *uh, void **p1, void **p2)
{
 void *p;

 uh->alloc++;
 KASSERT(*p1 != ((void*)0) || *p2 != ((void*)0), ("Out of cached memory"));
 if (*p1 != ((void*)0)) {
  p = *p1;
  *p1 = ((void*)0);
  return (p);
 } else {
  p = *p2;
  *p2 = ((void*)0);
  return (p);
 }
}
