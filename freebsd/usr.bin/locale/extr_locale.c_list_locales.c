
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {size_t sl_cur; char** sl_str; } ;


 int init_locales_list () ;
 TYPE_1__* locales ;
 int printf (char*,char*) ;

void
list_locales(void)
{
 size_t i;

 init_locales_list();
 for (i = 0; i < locales->sl_cur; i++) {
  printf("%s\n", locales->sl_str[i]);
 }
}
