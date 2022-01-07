
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef enum g_part_alias { ____Placeholder_g_part_alias } g_part_alias ;
struct TYPE_2__ {int alias; char const* lexeme; } ;


 int G_PART_ALIAS_COUNT ;
 TYPE_1__* g_part_alias_list ;

const char *
g_part_alias_name(enum g_part_alias alias)
{
 int i;

 for (i = 0; i < G_PART_ALIAS_COUNT; i++) {
  if (g_part_alias_list[i].alias != alias)
   continue;
  return (g_part_alias_list[i].lexeme);
 }

 return (((void*)0));
}
