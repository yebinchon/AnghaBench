
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kobj {int dummy; } ;
struct icl_conn {scalar_t__ ic_outstanding_pdus; int ic_receive_cv; int ic_send_cv; } ;


 int KASSERT (int,char*) ;
 int M_ICL_SOFT ;
 int cv_destroy (int *) ;
 int icl_ncons ;
 int kobj_delete (struct kobj*,int ) ;
 int refcount_release (int *) ;

void
icl_soft_conn_free(struct icl_conn *ic)
{






 cv_destroy(&ic->ic_send_cv);
 cv_destroy(&ic->ic_receive_cv);
 kobj_delete((struct kobj *)ic, M_ICL_SOFT);
 refcount_release(&icl_ncons);
}
