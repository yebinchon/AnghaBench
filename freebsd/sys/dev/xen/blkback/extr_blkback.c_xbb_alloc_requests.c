
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xbb_xen_req {int dummy; } ;
struct xbb_softc {int max_requests; int request_free_stailq; struct xbb_xen_req* requests; int dev; } ;


 int ENOMEM ;
 int M_NOWAIT ;
 int M_XENBLOCKBACK ;
 int M_ZERO ;
 int STAILQ_INIT (int *) ;
 int STAILQ_INSERT_TAIL (int *,struct xbb_xen_req*,int ) ;
 int links ;
 struct xbb_xen_req* malloc (int,int ,int) ;
 int xenbus_dev_fatal (int ,int,char*) ;

__attribute__((used)) static int
xbb_alloc_requests(struct xbb_softc *xbb)
{
 struct xbb_xen_req *req;
 struct xbb_xen_req *last_req;




 xbb->requests = malloc(xbb->max_requests * sizeof(*xbb->requests),
          M_XENBLOCKBACK, M_NOWAIT|M_ZERO);
 if (xbb->requests == ((void*)0)) {
  xenbus_dev_fatal(xbb->dev, ENOMEM,
      "Unable to allocate request structures");
  return (ENOMEM);
 }

 req = xbb->requests;
 last_req = &xbb->requests[xbb->max_requests - 1];
 STAILQ_INIT(&xbb->request_free_stailq);
 while (req <= last_req) {
  STAILQ_INSERT_TAIL(&xbb->request_free_stailq, req, links);
  req++;
 }
 return (0);
}
