
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pmap_invalidate_page_arg {int va; int pmap; } ;


 int tlb_invalidate_address (int ,int ) ;

__attribute__((used)) static void
pmap_invalidate_page_action(void *arg)
{
 struct pmap_invalidate_page_arg *p = arg;

 tlb_invalidate_address(p->pmap, p->va);
}
