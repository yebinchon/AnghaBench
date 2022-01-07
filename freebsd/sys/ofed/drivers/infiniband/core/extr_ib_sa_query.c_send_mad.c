
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ib_sa_query {int id; int flags; TYPE_1__* mad_buf; } ;
typedef int gfp_t ;
struct TYPE_2__ {int timeout_ms; struct ib_sa_query** context; } ;


 int GFP_NOWAIT ;
 int IB_SA_ENABLE_LOCAL_SERVICE ;
 int gfpflags_allow_blocking (int ) ;
 int ib_post_send_mad (TYPE_1__*,int *) ;
 int ib_sa_disable_local_svc (struct ib_sa_query*) ;
 int idr_alloc (int *,struct ib_sa_query*,int ,int ,int ) ;
 int idr_lock ;
 int idr_preload (int ) ;
 int idr_preload_end () ;
 int idr_remove (int *,int) ;
 int query_idr ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int send_mad(struct ib_sa_query *query, int timeout_ms, gfp_t gfp_mask)
{
 bool preload = gfpflags_allow_blocking(gfp_mask);
 unsigned long flags;
 int ret, id;

 if (preload)
  idr_preload(gfp_mask);
 spin_lock_irqsave(&idr_lock, flags);

 id = idr_alloc(&query_idr, query, 0, 0, GFP_NOWAIT);

 spin_unlock_irqrestore(&idr_lock, flags);
 if (preload)
  idr_preload_end();
 if (id < 0)
  return id;

 query->mad_buf->timeout_ms = timeout_ms;
 query->mad_buf->context[0] = query;
 query->id = id;

 if (query->flags & IB_SA_ENABLE_LOCAL_SERVICE) {
  ib_sa_disable_local_svc(query);
 }

 ret = ib_post_send_mad(query->mad_buf, ((void*)0));
 if (ret) {
  spin_lock_irqsave(&idr_lock, flags);
  idr_remove(&query_idr, id);
  spin_unlock_irqrestore(&idr_lock, flags);
 }






 return ret ? ret : id;
}
