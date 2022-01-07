
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ vid; } ;
typedef TYPE_1__ bhnd_sprom_opcode_idx_entry ;



__attribute__((used)) static int
bhnd_sprom_opcode_sort_idx(const void *lhs, const void *rhs)
{
 const bhnd_sprom_opcode_idx_entry *l, *r;

 l = lhs;
 r = rhs;

 if (l->vid < r->vid)
  return (-1);
 if (l->vid > r->vid)
  return (1);
 return (0);
}
