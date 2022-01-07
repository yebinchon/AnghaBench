
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CLEAN_COLOR_HELP ;
 int CLEAN_COLOR_RESET ;
 int _ (char*) ;
 int clean_print_color (int ) ;
 int printf_ln (int ) ;

__attribute__((used)) static int help_cmd(void)
{
 clean_print_color(CLEAN_COLOR_HELP);
 printf_ln(_(
      "clean               - start cleaning\n"
      "filter by pattern   - exclude items from deletion\n"
      "select by numbers   - select items to be deleted by numbers\n"
      "ask each            - confirm each deletion (like \"rm -i\")\n"
      "quit                - stop cleaning\n"
      "help                - this screen\n"
      "?                   - help for prompt selection"
     ));
 clean_print_color(CLEAN_COLOR_RESET);
 return 0;
}
