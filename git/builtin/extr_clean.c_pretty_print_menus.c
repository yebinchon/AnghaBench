
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct string_list {int dummy; } ;
struct column_options {char* indent; int padding; } ;
typedef int copts ;


 unsigned int COL_ENABLED ;
 unsigned int COL_ROW ;
 int memset (struct column_options*,int ,int) ;
 int print_columns (struct string_list*,unsigned int,struct column_options*) ;

__attribute__((used)) static void pretty_print_menus(struct string_list *menu_list)
{
 unsigned int local_colopts = 0;
 struct column_options copts;

 local_colopts = COL_ENABLED | COL_ROW;
 memset(&copts, 0, sizeof(copts));
 copts.indent = "  ";
 copts.padding = 2;
 print_columns(menu_list, local_colopts, &copts);
}
