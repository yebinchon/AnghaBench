
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct TYPE_3__ {scalar_t__ max_sg_per_iu; } ;
typedef TYPE_1__ pqisrc_softstate_t ;


 int DBG_FUNC (char*) ;
 int DBG_IO (char*,scalar_t__) ;
 scalar_t__ MAX_EMBEDDED_SG_IN_FIRST_IU ;
 int MAX_EMBEDDED_SG_IN_IU ;
 scalar_t__ PQISRC_DIV_ROUND_UP (scalar_t__,int ) ;

__attribute__((used)) static uint32_t
pqisrc_num_elem_needed(pqisrc_softstate_t *softs, uint32_t SG_Count)
{
 uint32_t num_sg;
 uint32_t num_elem_required = 1;
 DBG_FUNC(" IN ");
 DBG_IO("SGL_Count :%d",SG_Count);






 if(SG_Count > softs->max_sg_per_iu || SG_Count <= MAX_EMBEDDED_SG_IN_FIRST_IU)
  return num_elem_required;



 num_sg = SG_Count - MAX_EMBEDDED_SG_IN_FIRST_IU;
 num_elem_required += PQISRC_DIV_ROUND_UP(num_sg, MAX_EMBEDDED_SG_IN_IU);
 DBG_FUNC(" OUT ");
 return num_elem_required;
}
