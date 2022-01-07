
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dmar_unit {int dummy; } ;
typedef int dmar_root_entry_t ;


 int dmar_flush_transl_to_ram (struct dmar_unit*,int *,int) ;

void
dmar_flush_root_to_ram(struct dmar_unit *unit, dmar_root_entry_t *dst)
{

 dmar_flush_transl_to_ram(unit, dst, sizeof(*dst));
}
