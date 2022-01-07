
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct ixl_pf_qmgr_qinfo {int dummy; } ;
struct ixl_pf_qmgr {int num_queues; int * qinfo; } ;


 int EINVAL ;
 int ENOMEM ;
 int M_IXL ;
 int M_NOWAIT ;
 int M_ZERO ;
 int * malloc (int,int ,int) ;

int
ixl_pf_qmgr_init(struct ixl_pf_qmgr *qmgr, u16 num_queues)
{
 if (num_queues < 1)
  return (EINVAL);

 qmgr->num_queues = num_queues;
 qmgr->qinfo = malloc(num_queues * sizeof(struct ixl_pf_qmgr_qinfo),
     M_IXL, M_ZERO | M_NOWAIT);
 if (qmgr->qinfo == ((void*)0))
  return ENOMEM;

 return (0);
}
