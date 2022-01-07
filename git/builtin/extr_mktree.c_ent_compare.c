
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct treeent {int mode; int len; int name; } ;


 int base_name_compare (int ,int ,int ,int ,int ,int ) ;

__attribute__((used)) static int ent_compare(const void *a_, const void *b_)
{
 struct treeent *a = *(struct treeent **)a_;
 struct treeent *b = *(struct treeent **)b_;
 return base_name_compare(a->name, a->len, a->mode,
     b->name, b->len, b->mode);
}
