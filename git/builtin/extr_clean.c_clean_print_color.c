
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum color_clean { ____Placeholder_color_clean } color_clean ;


 char* clean_get_color (int) ;
 int printf (char*,char*) ;

__attribute__((used)) static void clean_print_color(enum color_clean ix)
{
 printf("%s", clean_get_color(ix));
}
