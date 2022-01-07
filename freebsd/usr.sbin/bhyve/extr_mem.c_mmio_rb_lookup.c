
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct mmio_rb_tree {int dummy; } ;
struct mmio_rb_range {int mr_end; int mr_base; } ;


 int ENOENT ;
 struct mmio_rb_range* RB_FIND (int ,struct mmio_rb_tree*,struct mmio_rb_range*) ;
 int mmio_rb_tree ;

__attribute__((used)) static int
mmio_rb_lookup(struct mmio_rb_tree *rbt, uint64_t addr,
    struct mmio_rb_range **entry)
{
 struct mmio_rb_range find, *res;

 find.mr_base = find.mr_end = addr;

 res = RB_FIND(mmio_rb_tree, rbt, &find);

 if (res != ((void*)0)) {
  *entry = res;
  return (0);
 }

 return (ENOENT);
}
