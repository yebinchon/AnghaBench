
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MENU_RETURN_NO_LOOP ;
 char* _ (char*) ;
 int del_list ;
 int printf (char*) ;
 int string_list_clear (int *,int ) ;

__attribute__((used)) static int quit_cmd(void)
{
 string_list_clear(&del_list, 0);
 printf(_("Bye.\n"));
 return MENU_RETURN_NO_LOOP;
}
