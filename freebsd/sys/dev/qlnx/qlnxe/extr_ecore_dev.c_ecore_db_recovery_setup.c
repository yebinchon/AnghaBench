
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ db_recovery_counter; int lock; int list; } ;
struct ecore_hwfn {TYPE_1__ db_recovery_info; TYPE_2__* p_dev; } ;
typedef enum _ecore_status_t { ____Placeholder__ecore_status_t } _ecore_status_t ;
struct TYPE_4__ {int db_size; } ;


 int DP_ERR (TYPE_2__*,char*) ;
 int DP_VERBOSE (struct ecore_hwfn*,int ,char*) ;
 int ECORE_INVAL ;
 int ECORE_MSG_SPQ ;
 int ECORE_NOMEM ;
 int ECORE_SUCCESS ;
 int OSAL_LIST_INIT (int *) ;
 scalar_t__ OSAL_SPIN_LOCK_ALLOC (struct ecore_hwfn*,int *) ;
 int OSAL_SPIN_LOCK_INIT (int *) ;

__attribute__((used)) static enum _ecore_status_t ecore_db_recovery_setup(struct ecore_hwfn *p_hwfn)
{
 DP_VERBOSE(p_hwfn, ECORE_MSG_SPQ, "Setting up db recovery\n");


 if (!p_hwfn->p_dev->db_size) {
  DP_ERR(p_hwfn->p_dev, "db_size not set\n");
  return ECORE_INVAL;
 }

 OSAL_LIST_INIT(&p_hwfn->db_recovery_info.list);




 OSAL_SPIN_LOCK_INIT(&p_hwfn->db_recovery_info.lock);
 p_hwfn->db_recovery_info.db_recovery_counter = 0;

 return ECORE_SUCCESS;
}
