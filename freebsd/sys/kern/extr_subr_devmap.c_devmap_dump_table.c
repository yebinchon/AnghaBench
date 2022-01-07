
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct devmap_entry {scalar_t__ pd_size; scalar_t__ pd_pa; int pd_va; } ;


 struct devmap_entry* devmap_table ;

__attribute__((used)) static void
devmap_dump_table(int (*prfunc)(const char *, ...))
{
 const struct devmap_entry *pd;

 if (devmap_table == ((void*)0) || devmap_table[0].pd_size == 0) {
  prfunc("No static device mappings.\n");
  return;
 }

 prfunc("Static device mappings:\n");
 for (pd = devmap_table; pd->pd_size != 0; ++pd) {
  prfunc("  0x%08x - 0x%08x mapped at VA 0x%08x\n",
      pd->pd_pa, pd->pd_pa + pd->pd_size - 1, pd->pd_va);
 }
}
