
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct bhnd_core_desc {int class; } ;
typedef int bhnd_devclass_t ;


 int BHND_DEVCLASS_OTHER ;
 struct bhnd_core_desc* bhnd_find_core_desc (int ,int ) ;

bhnd_devclass_t
bhnd_find_core_class(uint16_t vendor, uint16_t device)
{
 const struct bhnd_core_desc *desc;

 if ((desc = bhnd_find_core_desc(vendor, device)) == ((void*)0))
  return (BHND_DEVCLASS_OTHER);

 return desc->class;
}
