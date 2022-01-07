
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct schizo_desc {int * sd_string; } ;
typedef int device_t ;


 char* ofw_bus_get_compat (int ) ;
 struct schizo_desc* schizo_compats ;
 scalar_t__ strcmp (int *,char const*) ;

__attribute__((used)) static const struct schizo_desc *
schizo_get_desc(device_t dev)
{
 const struct schizo_desc *desc;
 const char *compat;

 compat = ofw_bus_get_compat(dev);
 if (compat == ((void*)0))
  return (((void*)0));
 for (desc = schizo_compats; desc->sd_string != ((void*)0); desc++)
  if (strcmp(desc->sd_string, compat) == 0)
   return (desc);
 return (((void*)0));
}
