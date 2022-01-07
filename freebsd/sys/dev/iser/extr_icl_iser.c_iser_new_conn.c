
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct mtx {int dummy; } ;
struct icl_conn {char const* ic_name; int ic_iser; int ic_unmapped; int ic_offload; struct mtx* ic_lock; } ;
struct TYPE_3__ {int flush_cv; int flush_lock; } ;
struct TYPE_4__ {int lock; TYPE_1__ beacon; } ;
struct iser_conn {struct icl_conn icl_conn; TYPE_2__ ib_conn; int state_mutex; int up_cv; } ;


 int ISER_ERR (char*) ;
 int MTX_DEF ;
 int M_ICL_ISER ;
 int M_TEMP ;
 int M_WAITOK ;
 int M_ZERO ;
 int cv_init (int *,char*) ;
 int icl_iser_class ;
 int icl_iser_ncons ;
 scalar_t__ kobj_create (int *,int ,int) ;
 int mtx_init (int *,char*,int *,int ) ;
 int refcount_acquire (int *) ;
 int refcount_release (int *) ;
 int strdup (char*,int ) ;
 int sx_init (int *,char*) ;

__attribute__((used)) static struct icl_conn *
iser_new_conn(const char *name, struct mtx *lock)
{
 struct iser_conn *iser_conn;
 struct icl_conn *ic;

 refcount_acquire(&icl_iser_ncons);

 iser_conn = (struct iser_conn *)kobj_create(&icl_iser_class, M_ICL_ISER, M_WAITOK | M_ZERO);
 if (!iser_conn) {
  ISER_ERR("failed to allocate iser conn");
  refcount_release(&icl_iser_ncons);
  return (((void*)0));
 }

 cv_init(&iser_conn->up_cv, "iser_cv");
 sx_init(&iser_conn->state_mutex, "iser_conn_state_mutex");
 mtx_init(&iser_conn->ib_conn.beacon.flush_lock, "iser_flush_lock", ((void*)0), MTX_DEF);
 cv_init(&iser_conn->ib_conn.beacon.flush_cv, "flush_cv");
 mtx_init(&iser_conn->ib_conn.lock, "iser_lock", ((void*)0), MTX_DEF);

 ic = &iser_conn->icl_conn;
 ic->ic_lock = lock;
 ic->ic_name = name;
 ic->ic_offload = strdup("iser", M_TEMP);
 ic->ic_iser = 1;
 ic->ic_unmapped = 1;

 return (ic);
}
