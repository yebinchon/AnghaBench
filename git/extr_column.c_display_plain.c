
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct string_list {int nr; TYPE_1__* items; } ;
struct TYPE_2__ {char* string; } ;


 int printf (char*,char const*,char*,char const*) ;

__attribute__((used)) static void display_plain(const struct string_list *list,
     const char *indent, const char *nl)
{
 int i;

 for (i = 0; i < list->nr; i++)
  printf("%s%s%s", indent, list->items[i].string, nl);
}
