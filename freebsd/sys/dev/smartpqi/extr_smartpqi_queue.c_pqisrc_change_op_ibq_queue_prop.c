
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int uint32_t ;
typedef int pqisrc_softstate_t ;
struct TYPE_12__ {int q_id; } ;
typedef TYPE_3__ ib_queue_t ;
struct TYPE_10__ {int vend_specific; int qid; } ;
struct TYPE_11__ {TYPE_1__ change_op_iq_prop; } ;
struct TYPE_13__ {TYPE_2__ req_type; int fn_code; } ;
typedef TYPE_4__ gen_adm_resp_iu_t ;
typedef TYPE_4__ gen_adm_req_iu_t ;
typedef int admin_resp ;
typedef int admin_req ;


 int DBG_FUNC (char*) ;
 int PQI_FUNCTION_CHANGE_OPERATIONAL_IQ_PROP ;
 int PQI_STATUS_SUCCESS ;
 int memset (TYPE_4__*,int ,int) ;
 int pqisrc_submit_admin_req (int *,TYPE_4__*,TYPE_4__*) ;

int pqisrc_change_op_ibq_queue_prop(pqisrc_softstate_t *softs,
   ib_queue_t *op_ib_q, uint32_t prop)
{
 int ret = PQI_STATUS_SUCCESS;;
 gen_adm_req_iu_t admin_req;
 gen_adm_resp_iu_t admin_resp;

 memset(&admin_req, 0, sizeof(admin_req));
 memset(&admin_resp, 0, sizeof(admin_resp));

 DBG_FUNC("IN\n");

 admin_req.fn_code = PQI_FUNCTION_CHANGE_OPERATIONAL_IQ_PROP;
 admin_req.req_type.change_op_iq_prop.qid = op_ib_q->q_id;
 admin_req.req_type.change_op_iq_prop.vend_specific = prop;

 ret = pqisrc_submit_admin_req(softs, &admin_req, &admin_resp);

 DBG_FUNC("OUT\n");
 return ret;
}
