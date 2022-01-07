
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fire_desc {int * fd_string; } ;
typedef int device_t ;


 struct fire_desc* fire_compats ;
 char* ofw_bus_get_compat (int ) ;
 scalar_t__ strcmp (int *,char const*) ;

__attribute__((used)) static const struct fire_desc *
fire_get_desc(device_t dev)
{
 const struct fire_desc *desc;
 const char *compat;

 compat = ofw_bus_get_compat(dev);
 if (compat == ((void*)0))
  return (((void*)0));
 for (desc = fire_compats; desc->fd_string != ((void*)0); desc++)
  if (strcmp(desc->fd_string, compat) == 0)
   return (desc);
 return (((void*)0));
}
