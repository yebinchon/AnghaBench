
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kinfo_proc {scalar_t__ ki_tid; } ;


 int assert (int) ;

__attribute__((used)) static int
compare_tid(const void *p1, const void *p2)
{
 const struct kinfo_proc * const *pp1 = p1;
 const struct kinfo_proc * const *pp2 = p2;

 assert((*pp2)->ki_tid >= 0 && (*pp1)->ki_tid >= 0);

 return ((*pp1)->ki_tid - (*pp2)->ki_tid);
}
