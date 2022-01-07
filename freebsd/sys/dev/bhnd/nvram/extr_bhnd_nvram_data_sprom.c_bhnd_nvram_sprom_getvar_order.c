
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bhnd_sprom_opcode_idx_entry {int dummy; } ;
struct bhnd_nvram_data {int dummy; } ;



__attribute__((used)) static int
bhnd_nvram_sprom_getvar_order(struct bhnd_nvram_data *nv, void *cookiep1,
    void *cookiep2)
{
 struct bhnd_sprom_opcode_idx_entry *e1, *e2;

 e1 = cookiep1;
 e2 = cookiep2;



 if (e1 < e2)
  return (-1);
 else if (e1 > e2)
  return (1);

 return (0);
}
