
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct kobj {int dummy; } ;
struct TYPE_3__ {int flush_lock; int flush_cv; } ;
struct TYPE_4__ {TYPE_1__ beacon; int lock; } ;
struct iser_conn {int up_cv; int state_mutex; TYPE_2__ ib_conn; } ;
struct icl_conn {int dummy; } ;


 int M_ICL_ISER ;
 int cv_destroy (int *) ;
 int icl_iser_ncons ;
 struct iser_conn* icl_to_iser_conn (struct icl_conn*) ;
 int iser_conn_release (struct icl_conn*) ;
 int kobj_delete (struct kobj*,int ) ;
 int mtx_destroy (int *) ;
 int refcount_release (int *) ;
 int sx_destroy (int *) ;

void
iser_conn_free(struct icl_conn *ic)
{
 struct iser_conn *iser_conn = icl_to_iser_conn(ic);

 iser_conn_release(ic);
 mtx_destroy(&iser_conn->ib_conn.lock);
 cv_destroy(&iser_conn->ib_conn.beacon.flush_cv);
 mtx_destroy(&iser_conn->ib_conn.beacon.flush_lock);
 sx_destroy(&iser_conn->state_mutex);
 cv_destroy(&iser_conn->up_cv);
 kobj_delete((struct kobj *)iser_conn, M_ICL_ISER);
 refcount_release(&icl_iser_ncons);
}
