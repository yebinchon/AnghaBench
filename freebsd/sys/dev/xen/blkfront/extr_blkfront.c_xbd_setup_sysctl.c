
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xbd_softc {int xbd_ring_pages; int xbd_max_request_size; int xbd_max_request_segments; int xbd_max_requests; int xbd_dev; } ;
struct sysctl_oid_list {int dummy; } ;
struct sysctl_oid {int dummy; } ;
struct sysctl_ctx_list {int dummy; } ;


 int CTLFLAG_RD ;
 int CTLTYPE_STRING ;
 int OID_AUTO ;
 int SYSCTL_ADD_PROC (struct sysctl_ctx_list*,struct sysctl_oid_list*,int ,char*,int,struct xbd_softc*,int ,int ,char*,char*) ;
 int SYSCTL_ADD_UINT (struct sysctl_ctx_list*,struct sysctl_oid_list*,int ,char*,int,int *,int,char*) ;
 struct sysctl_oid_list* SYSCTL_CHILDREN (struct sysctl_oid*) ;
 struct sysctl_ctx_list* device_get_sysctl_ctx (int ) ;
 struct sysctl_oid* device_get_sysctl_tree (int ) ;
 int xbd_sysctl_features ;

__attribute__((used)) static void
xbd_setup_sysctl(struct xbd_softc *xbd)
{
 struct sysctl_ctx_list *sysctl_ctx = ((void*)0);
 struct sysctl_oid *sysctl_tree = ((void*)0);
 struct sysctl_oid_list *children;

 sysctl_ctx = device_get_sysctl_ctx(xbd->xbd_dev);
 if (sysctl_ctx == ((void*)0))
  return;

 sysctl_tree = device_get_sysctl_tree(xbd->xbd_dev);
 if (sysctl_tree == ((void*)0))
  return;

 children = SYSCTL_CHILDREN(sysctl_tree);
 SYSCTL_ADD_UINT(sysctl_ctx, children, OID_AUTO,
     "max_requests", CTLFLAG_RD, &xbd->xbd_max_requests, -1,
     "maximum outstanding requests (negotiated)");

 SYSCTL_ADD_UINT(sysctl_ctx, children, OID_AUTO,
     "max_request_segments", CTLFLAG_RD,
     &xbd->xbd_max_request_segments, 0,
     "maximum number of pages per requests (negotiated)");

 SYSCTL_ADD_UINT(sysctl_ctx, children, OID_AUTO,
     "max_request_size", CTLFLAG_RD, &xbd->xbd_max_request_size, 0,
     "maximum size in bytes of a request (negotiated)");

 SYSCTL_ADD_UINT(sysctl_ctx, children, OID_AUTO,
     "ring_pages", CTLFLAG_RD, &xbd->xbd_ring_pages, 0,
     "communication channel pages (negotiated)");

 SYSCTL_ADD_PROC(sysctl_ctx, children, OID_AUTO,
     "features", CTLTYPE_STRING|CTLFLAG_RD, xbd, 0,
     xbd_sysctl_features, "A", "protocol features (negotiated)");
}
