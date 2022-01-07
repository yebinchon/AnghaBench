
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint16_t ;
typedef size_t u_int ;
struct bhnd_core_desc {scalar_t__ vendor; scalar_t__ device; int * desc; } ;


 struct bhnd_core_desc const* bhnd_core_descs ;

__attribute__((used)) static const struct bhnd_core_desc *
bhnd_find_core_desc(uint16_t vendor, uint16_t device)
{
 for (u_int i = 0; bhnd_core_descs[i].desc != ((void*)0); i++) {
  if (bhnd_core_descs[i].vendor != vendor)
   continue;

  if (bhnd_core_descs[i].device != device)
   continue;

  return (&bhnd_core_descs[i]);
 }

 return (((void*)0));
}
