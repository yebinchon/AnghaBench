
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct g_provider {int dummy; } ;
struct g_part_table {TYPE_2__* gpt_gp; } ;
struct g_part_parms {scalar_t__ gpp_size; } ;
struct g_part_entry {scalar_t__ gpe_start; scalar_t__ gpe_end; } ;
struct TYPE_4__ {scalar_t__ p_size; } ;
struct g_part_bsd_entry {TYPE_1__ part; } ;
struct TYPE_6__ {struct g_provider* provider; } ;
struct TYPE_5__ {int consumer; } ;


 TYPE_3__* LIST_FIRST (int *) ;
 int bsd_set_rawsize (struct g_part_table*,struct g_provider*) ;

__attribute__((used)) static int
g_part_bsd_resize(struct g_part_table *basetable,
    struct g_part_entry *baseentry, struct g_part_parms *gpp)
{
 struct g_part_bsd_entry *entry;
 struct g_provider *pp;

 if (baseentry == ((void*)0)) {
  pp = LIST_FIRST(&basetable->gpt_gp->consumer)->provider;
  bsd_set_rawsize(basetable, pp);
  return (0);
 }
 entry = (struct g_part_bsd_entry *)baseentry;
 baseentry->gpe_end = baseentry->gpe_start + gpp->gpp_size - 1;
 entry->part.p_size = gpp->gpp_size;

 return (0);
}
