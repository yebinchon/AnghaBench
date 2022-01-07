
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {size_t vid; } ;
typedef TYPE_1__ bhnd_sprom_opcode_idx_entry ;



__attribute__((used)) static int
bhnd_nvram_opcode_idx_vid_compare(const void *key, const void *rhs)
{
 const bhnd_sprom_opcode_idx_entry *entry;
 size_t vid;

 vid = *(const size_t *)key;
 entry = rhs;

 if (vid < entry->vid)
  return (-1);
 if (vid > entry->vid)
  return (1);

 return (0);
}
