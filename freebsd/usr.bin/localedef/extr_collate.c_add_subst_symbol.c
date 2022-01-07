
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * ref; } ;
typedef TYPE_1__ collundef_t ;


 int add_subst_pri (int ) ;
 size_t curr_weight ;
 TYPE_1__* get_collundef (char*) ;

void
add_subst_symbol(char *ptr)
{
 collundef_t *cu;

 if ((cu = get_collundef(ptr)) != ((void*)0)) {
  add_subst_pri(cu->ref[curr_weight]);
 }
}
