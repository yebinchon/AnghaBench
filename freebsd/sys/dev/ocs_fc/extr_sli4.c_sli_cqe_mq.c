
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int completion_status; int val; int ae; int cmp; int con; int extended_status; } ;
typedef TYPE_1__ sli4_mcqe_t ;
typedef int int32_t ;


 int ocs_log_debug (int *,char*,int,int ,int ,int ,int ,int ) ;

int32_t
sli_cqe_mq(void *buf)
{
 sli4_mcqe_t *mcqe = buf;






 if (!mcqe->cmp) {
  return -2;
 }

 if (mcqe->completion_status) {
  ocs_log_debug(((void*)0), "bad status (cmpl=%#x ext=%#x con=%d cmp=%d ae=%d val=%d)\n",
    mcqe->completion_status,
    mcqe->extended_status,
    mcqe->con,
    mcqe->cmp,
    mcqe->ae,
    mcqe->val);
 }

 return mcqe->completion_status;
}
