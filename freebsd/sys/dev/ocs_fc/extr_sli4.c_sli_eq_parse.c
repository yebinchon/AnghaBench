
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint16_t ;
struct TYPE_5__ {int os; } ;
typedef TYPE_1__ sli4_t ;
struct TYPE_6__ {int major_code; int minor_code; int resource_id; } ;
typedef TYPE_2__ sli4_eqe_t ;
typedef int int32_t ;




 int ocs_log_debug (int ,char*) ;
 int ocs_log_err (int *,char*,TYPE_1__*,int *,int *) ;
 int ocs_log_test (int ,char*,int,int ) ;

int32_t
sli_eq_parse(sli4_t *sli4, uint8_t *buf, uint16_t *cq_id)
{
 sli4_eqe_t *eqe = (void *)buf;
 int32_t rc = 0;

 if (!sli4 || !buf || !cq_id) {
  ocs_log_err(((void*)0), "bad parameters sli4=%p buf=%p cq_id=%p\n",
    sli4, buf, cq_id);
  return -1;
 }

 switch (eqe->major_code) {
 case 128:
  *cq_id = eqe->resource_id;
  break;
 case 129:
  ocs_log_debug(sli4->os, "sentinel EQE\n");
  rc = 1;
  break;
 default:
  ocs_log_test(sli4->os, "Unsupported EQE: major %x minor %x\n",
    eqe->major_code, eqe->minor_code);
  rc = -1;
 }

 return rc;
}
