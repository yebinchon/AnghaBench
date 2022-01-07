
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct g_provider {int sectorsize; scalar_t__ mediasize; } ;
struct g_part_table {int gpt_last; TYPE_1__* gpt_gp; } ;
struct g_part_parms {scalar_t__ gpp_size; } ;
struct g_part_entry {scalar_t__ gpe_start; scalar_t__ gpe_end; } ;
struct g_part_bsd64_table {int d_abase; int d_bbase; int d_align; } ;
struct TYPE_4__ {struct g_provider* provider; } ;
struct TYPE_3__ {int consumer; } ;


 TYPE_2__* LIST_FIRST (int *) ;
 int rounddown2 (scalar_t__,int ) ;

__attribute__((used)) static int
g_part_bsd64_resize(struct g_part_table *basetable,
    struct g_part_entry *baseentry, struct g_part_parms *gpp)
{
 struct g_part_bsd64_table *table;
 struct g_provider *pp;

 if (baseentry == ((void*)0)) {
  pp = LIST_FIRST(&basetable->gpt_gp->consumer)->provider;
  table = (struct g_part_bsd64_table *)basetable;
  table->d_abase =
      rounddown2(pp->mediasize - table->d_bbase * pp->sectorsize,
          table->d_align) / pp->sectorsize;
  basetable->gpt_last = table->d_abase - 1;
  return (0);
 }
 baseentry->gpe_end = baseentry->gpe_start + gpp->gpp_size - 1;
 return (0);
}
