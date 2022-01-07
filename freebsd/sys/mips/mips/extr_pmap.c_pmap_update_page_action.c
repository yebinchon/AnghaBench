
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pmap_update_page_arg {int pte; int va; int pmap; } ;


 int tlb_update (int ,int ,int ) ;

__attribute__((used)) static void
pmap_update_page_action(void *arg)
{
 struct pmap_update_page_arg *p = arg;

 tlb_update(p->pmap, p->va, p->pte);
}
