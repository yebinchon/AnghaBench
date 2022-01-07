
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CLEAN_COLOR_HELP ;
 int CLEAN_COLOR_RESET ;
 char* _ (char*) ;
 int clean_print_color (int ) ;
 int printf (char*) ;

__attribute__((used)) static void prompt_help_cmd(int singleton)
{
 clean_print_color(CLEAN_COLOR_HELP);
 printf(singleton ?
    _("Prompt help:\n"
      "1          - select a numbered item\n"
      "foo        - select item based on unique prefix\n"
      "           - (empty) select nothing\n") :
    _("Prompt help:\n"
      "1          - select a single item\n"
      "3-5        - select a range of items\n"
      "2-3,6-9    - select multiple ranges\n"
      "foo        - select item based on unique prefix\n"
      "-...       - unselect specified items\n"
      "*          - choose all items\n"
      "           - (empty) finish selecting\n"));
 clean_print_color(CLEAN_COLOR_RESET);
}
