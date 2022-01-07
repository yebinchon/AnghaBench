
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pmap_invalidate_range_arg {int eva; int sva; int pmap; } ;


 int tlb_invalidate_range (int ,int ,int ) ;

__attribute__((used)) static void
pmap_invalidate_range_action(void *arg)
{
 struct pmap_invalidate_range_arg *p = arg;

 tlb_invalidate_range(p->pmap, p->sva, p->eva);
}
