
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct g_provider {int mediasize; int sectorsize; } ;
struct g_part_table {scalar_t__ gpt_last; TYPE_1__* gpt_gp; } ;
struct g_part_parms {int dummy; } ;
struct g_part_entry {int dummy; } ;
struct TYPE_4__ {struct g_provider* provider; } ;
struct TYPE_3__ {int consumer; } ;


 int EOPNOTSUPP ;
 TYPE_2__* LIST_FIRST (int *) ;
 scalar_t__ MIN (int,int ) ;
 int UINT32_MAX ;

__attribute__((used)) static int
g_part_ebr_resize(struct g_part_table *basetable,
    struct g_part_entry *baseentry, struct g_part_parms *gpp)
{
 struct g_provider *pp;

 if (baseentry != ((void*)0))
  return (EOPNOTSUPP);
 pp = LIST_FIRST(&basetable->gpt_gp->consumer)->provider;
 basetable->gpt_last = MIN(pp->mediasize / pp->sectorsize,
     UINT32_MAX) - 1;
 return (0);
}
