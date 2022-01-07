
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xbb_xen_req {int dummy; } ;
struct xbb_softc {int active_request_count; int request_free_stailq; int lock; } ;


 int MA_OWNED ;
 struct xbb_xen_req* STAILQ_FIRST (int *) ;
 int STAILQ_REMOVE_HEAD (int *,int ) ;
 int links ;
 int mtx_assert (int *,int ) ;

__attribute__((used)) static inline struct xbb_xen_req *
xbb_get_req(struct xbb_softc *xbb)
{
 struct xbb_xen_req *req;

 req = ((void*)0);

 mtx_assert(&xbb->lock, MA_OWNED);

 if ((req = STAILQ_FIRST(&xbb->request_free_stailq)) != ((void*)0)) {
  STAILQ_REMOVE_HEAD(&xbb->request_free_stailq, links);
  xbb->active_request_count++;
 }

 return (req);
}
