
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef size_t u32 ;
struct TYPE_8__ {int val; void* reg; } ;
struct TYPE_7__ {void* reg; } ;
struct TYPE_6__ {void* reg; } ;
struct ecore_ilt_client_cfg {TYPE_3__ p_size; TYPE_2__ last; TYPE_1__ first; } ;
struct ecore_hwfn {struct ecore_cxt_mngr* p_cxt_mngr; TYPE_5__* p_dev; } ;
struct ecore_cxt_mngr {int mutex; int vf_count; int * task_type_size; struct ecore_ilt_client_cfg* clients; } ;
typedef enum _ecore_status_t { ____Placeholder__ecore_status_t } _ecore_status_t ;
struct TYPE_10__ {TYPE_4__* p_iov_info; int ilt_page_size; } ;
struct TYPE_9__ {int total_vfs; } ;


 int CDUC ;
 int CDUT ;
 int DP_NOTICE (struct ecore_hwfn*,int,char*) ;
 int ECORE_NOMEM ;
 int ECORE_SUCCESS ;
 int FIRST_ILT ;
 int GFP_KERNEL ;
 void* ILT_CFG_REG (int ,int ) ;
 size_t ILT_CLI_CDUC ;
 size_t ILT_CLI_CDUT ;
 size_t ILT_CLI_MAX ;
 size_t ILT_CLI_QM ;
 size_t ILT_CLI_SRC ;
 size_t ILT_CLI_TM ;
 size_t ILT_CLI_TSDM ;
 int LAST_ILT ;
 int OSAL_MUTEX_ALLOC (struct ecore_hwfn*,int *) ;
 int OSAL_MUTEX_INIT (int *) ;
 struct ecore_cxt_mngr* OSAL_ZALLOC (TYPE_5__*,int ,int) ;
 int P_SIZE ;
 int QM ;
 int SRC ;
 int TM ;
 int TSDM ;
 int TYPE0_TASK_CXT_SIZE (struct ecore_hwfn*) ;
 int TYPE1_TASK_CXT_SIZE (struct ecore_hwfn*) ;

enum _ecore_status_t ecore_cxt_mngr_alloc(struct ecore_hwfn *p_hwfn)
{
 struct ecore_ilt_client_cfg *clients;
 struct ecore_cxt_mngr *p_mngr;
 u32 i;

 p_mngr = OSAL_ZALLOC(p_hwfn->p_dev, GFP_KERNEL, sizeof(*p_mngr));
 if (!p_mngr) {
  DP_NOTICE(p_hwfn, 0, "Failed to allocate `struct ecore_cxt_mngr'\n");
  return ECORE_NOMEM;
 }


 clients = p_mngr->clients;
 clients[ILT_CLI_CDUC].first.reg = ILT_CFG_REG(CDUC, FIRST_ILT);
 clients[ILT_CLI_CDUC].last.reg = ILT_CFG_REG(CDUC, LAST_ILT);
 clients[ILT_CLI_CDUC].p_size.reg = ILT_CFG_REG(CDUC, P_SIZE);

 clients[ILT_CLI_QM].first.reg = ILT_CFG_REG(QM, FIRST_ILT);
 clients[ILT_CLI_QM].last.reg = ILT_CFG_REG(QM, LAST_ILT);
 clients[ILT_CLI_QM].p_size.reg = ILT_CFG_REG(QM, P_SIZE);

 clients[ILT_CLI_TM].first.reg = ILT_CFG_REG(TM, FIRST_ILT);
 clients[ILT_CLI_TM].last.reg = ILT_CFG_REG(TM, LAST_ILT);
 clients[ILT_CLI_TM].p_size.reg = ILT_CFG_REG(TM, P_SIZE);

 clients[ILT_CLI_SRC].first.reg = ILT_CFG_REG(SRC, FIRST_ILT);
 clients[ILT_CLI_SRC].last.reg = ILT_CFG_REG(SRC, LAST_ILT);
 clients[ILT_CLI_SRC].p_size.reg = ILT_CFG_REG(SRC, P_SIZE);

 clients[ILT_CLI_CDUT].first.reg = ILT_CFG_REG(CDUT, FIRST_ILT);
 clients[ILT_CLI_CDUT].last.reg = ILT_CFG_REG(CDUT, LAST_ILT);
 clients[ILT_CLI_CDUT].p_size.reg = ILT_CFG_REG(CDUT, P_SIZE);

 clients[ILT_CLI_TSDM].first.reg = ILT_CFG_REG(TSDM, FIRST_ILT);
 clients[ILT_CLI_TSDM].last.reg = ILT_CFG_REG(TSDM, LAST_ILT);
 clients[ILT_CLI_TSDM].p_size.reg = ILT_CFG_REG(TSDM, P_SIZE);


 for (i = 0; i < ILT_CLI_MAX; i++)
  p_mngr->clients[i].p_size.val = p_hwfn->p_dev->ilt_page_size;


 p_mngr->task_type_size[0] = TYPE0_TASK_CXT_SIZE(p_hwfn);
 p_mngr->task_type_size[1] = TYPE1_TASK_CXT_SIZE(p_hwfn);

 if (p_hwfn->p_dev->p_iov_info)
  p_mngr->vf_count = p_hwfn->p_dev->p_iov_info->total_vfs;





 OSAL_MUTEX_INIT(&p_mngr->mutex);


 p_hwfn->p_cxt_mngr = p_mngr;

 return ECORE_SUCCESS;
}
