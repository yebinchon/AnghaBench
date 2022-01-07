
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_5__ {size_t if_type; int os; } ;
typedef TYPE_1__ sli4_t ;
typedef size_t sli4_regname_e ;
struct TYPE_6__ {scalar_t__ rset; scalar_t__ off; } ;
typedef TYPE_2__ sli4_reg_t ;


 scalar_t__ UINT32_MAX ;
 int ocs_log_err (int ,char*,size_t,size_t) ;
 int ocs_reg_write32 (int ,scalar_t__,scalar_t__,int ) ;
 TYPE_2__** regmap ;

void
sli_reg_write(sli4_t *sli, sli4_regname_e reg, uint32_t val)
{
 const sli4_reg_t *r = &(regmap[reg][sli->if_type]);

 if ((UINT32_MAX == r->rset) || (UINT32_MAX == r->off)) {
  ocs_log_err(sli->os, "regname %d not defined for if_type %d\n", reg, sli->if_type);
  return;
 }

 ocs_reg_write32(sli->os, r->rset, r->off, val);
}
