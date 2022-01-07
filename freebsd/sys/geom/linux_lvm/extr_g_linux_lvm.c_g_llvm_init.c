
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct g_class {int dummy; } ;


 int LIST_INIT (int *) ;
 int vg_list ;

__attribute__((used)) static void
g_llvm_init(struct g_class *mp)
{
 LIST_INIT(&vg_list);
}
