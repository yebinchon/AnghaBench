
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct psycho_desc {int * pd_string; } ;


 scalar_t__ strcmp (int *,char const*) ;

__attribute__((used)) static const struct psycho_desc *
psycho_find_desc(const struct psycho_desc *table, const char *string)
{
 const struct psycho_desc *desc;

 if (string == ((void*)0))
  return (((void*)0));
 for (desc = table; desc->pd_string != ((void*)0); desc++)
  if (strcmp(desc->pd_string, string) == 0)
   return (desc);
 return (((void*)0));
}
