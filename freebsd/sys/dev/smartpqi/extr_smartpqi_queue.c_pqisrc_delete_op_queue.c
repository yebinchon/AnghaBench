
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int uint32_t ;
typedef int pqisrc_softstate_t ;
struct TYPE_8__ {int qid; } ;
struct TYPE_9__ {TYPE_1__ create_op_iq; } ;
struct TYPE_10__ {int fn_code; TYPE_2__ req_type; } ;
typedef TYPE_3__ gen_adm_resp_iu_t ;
typedef TYPE_3__ gen_adm_req_iu_t ;
typedef scalar_t__ boolean_t ;
typedef int admin_resp ;
typedef int admin_req ;


 int DBG_FUNC (char*) ;
 int PQI_FUNCTION_DELETE_OPERATIONAL_IQ ;
 int PQI_FUNCTION_DELETE_OPERATIONAL_OQ ;
 int PQI_STATUS_SUCCESS ;
 int memset (TYPE_3__*,int ,int) ;
 int pqisrc_submit_admin_req (int *,TYPE_3__*,TYPE_3__*) ;

int pqisrc_delete_op_queue(pqisrc_softstate_t *softs,
    uint32_t q_id, boolean_t ibq)
{
 int ret = PQI_STATUS_SUCCESS;
 return ret;
}
