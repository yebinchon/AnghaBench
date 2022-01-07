
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int flag; int * flag_name; } ;


 TYPE_1__* flags_table ;
 int * strstr (char const*,int *) ;

__attribute__((used)) static int
get_flags(const char *entry)
{
 int i;
 int result = 0;

 for (i = 0; flags_table[i].flag_name != ((void*)0); i++)
  if (strstr(entry, flags_table[i].flag_name) != ((void*)0))
   result |= flags_table[i].flag;

 return (result);
}
