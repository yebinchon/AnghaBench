
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xbb_xen_req_list {int dummy; } ;
struct xbb_softc {scalar_t__ active_request_count; int request_free_stailq; int lock; } ;


 int KASSERT (int,char*) ;
 int MA_OWNED ;
 int STAILQ_CONCAT (int *,struct xbb_xen_req_list*) ;
 int mtx_assert (int *,int ) ;

__attribute__((used)) static inline void
xbb_release_reqs(struct xbb_softc *xbb, struct xbb_xen_req_list *req_list,
   int nreqs)
{
 mtx_assert(&xbb->lock, MA_OWNED);

 STAILQ_CONCAT(&xbb->request_free_stailq, req_list);
 xbb->active_request_count -= nreqs;

 KASSERT(xbb->active_request_count >= 0,
  ("xbb_release_reqs: negative active count"));
}
