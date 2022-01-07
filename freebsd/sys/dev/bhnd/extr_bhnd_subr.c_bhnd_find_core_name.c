
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct bhnd_core_desc {char const* desc; } ;


 struct bhnd_core_desc* bhnd_find_core_desc (int ,int ) ;

const char *
bhnd_find_core_name(uint16_t vendor, uint16_t device)
{
 const struct bhnd_core_desc *desc;

 if ((desc = bhnd_find_core_desc(vendor, device)) == ((void*)0))
  return ("unknown");

 return desc->desc;
}
