
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtx {int dummy; } ;
struct icl_conn {char const* ic_name; char* ic_offload; int ic_unmapped; int ic_max_data_segment_length; int ic_outstanding_pdus; int ic_receive_cv; int ic_send_cv; struct mtx* ic_lock; int ic_to_send; } ;


 int ICL_MAX_DATA_SEGMENT_LENGTH ;
 int M_ICL_SOFT ;
 int M_WAITOK ;
 int M_ZERO ;
 int STAILQ_INIT (int *) ;
 int cv_init (int *,char*) ;
 int icl_ncons ;
 int icl_soft_class ;
 scalar_t__ kobj_create (int *,int ,int) ;
 int refcount_acquire (int *) ;
 int refcount_init (int *,int ) ;

__attribute__((used)) static struct icl_conn *
icl_soft_new_conn(const char *name, struct mtx *lock)
{
 struct icl_conn *ic;

 refcount_acquire(&icl_ncons);

 ic = (struct icl_conn *)kobj_create(&icl_soft_class, M_ICL_SOFT, M_WAITOK | M_ZERO);

 STAILQ_INIT(&ic->ic_to_send);
 ic->ic_lock = lock;
 cv_init(&ic->ic_send_cv, "icl_tx");
 cv_init(&ic->ic_receive_cv, "icl_rx");



 ic->ic_max_data_segment_length = ICL_MAX_DATA_SEGMENT_LENGTH;
 ic->ic_name = name;
 ic->ic_offload = "None";
 ic->ic_unmapped = 0;

 return (ic);
}
