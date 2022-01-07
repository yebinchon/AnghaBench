
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct icl_pdu {int dummy; } ;
struct icl_conn {int dummy; } ;
struct ccb_scsiio {int dummy; } ;



int
icl_soft_conn_task_setup(struct icl_conn *ic, struct icl_pdu *ip,
    struct ccb_scsiio *csio, uint32_t *task_tagp, void **prvp)
{

 return (0);
}
