
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int ring_pages; } ;
struct xbb_softc {TYPE_1__ ring_config; int max_request_size; int max_request_segments; int max_requests; int request_shortages; int kva_shortages; int total_dispatch; int normal_dispatch; int forced_dispatch; int reqs_completed_with_error; int reqs_queued_for_completion; int reqs_completed; int reqs_received; int no_coalesce_reqs; int flush_interval; int disable_flush; int dev; } ;
struct sysctl_oid {int dummy; } ;
struct sysctl_ctx_list {int dummy; } ;


 int CTLFLAG_RD ;
 int CTLFLAG_RW ;
 int OID_AUTO ;
 int SYSCTL_ADD_INT (struct sysctl_ctx_list*,int ,int ,char*,int ,int *,int ,char*) ;
 int SYSCTL_ADD_UINT (struct sysctl_ctx_list*,int ,int ,char*,int ,int *,int ,char*) ;
 int SYSCTL_ADD_UQUAD (struct sysctl_ctx_list*,int ,int ,char*,int ,int *,char*) ;
 int SYSCTL_CHILDREN (struct sysctl_oid*) ;
 struct sysctl_ctx_list* device_get_sysctl_ctx (int ) ;
 struct sysctl_oid* device_get_sysctl_tree (int ) ;

__attribute__((used)) static void
xbb_setup_sysctl(struct xbb_softc *xbb)
{
 struct sysctl_ctx_list *sysctl_ctx = ((void*)0);
 struct sysctl_oid *sysctl_tree = ((void*)0);

 sysctl_ctx = device_get_sysctl_ctx(xbb->dev);
 if (sysctl_ctx == ((void*)0))
  return;

 sysctl_tree = device_get_sysctl_tree(xbb->dev);
 if (sysctl_tree == ((void*)0))
  return;

 SYSCTL_ADD_INT(sysctl_ctx, SYSCTL_CHILDREN(sysctl_tree), OID_AUTO,
         "disable_flush", CTLFLAG_RW, &xbb->disable_flush, 0,
         "fake the flush command");

 SYSCTL_ADD_INT(sysctl_ctx, SYSCTL_CHILDREN(sysctl_tree), OID_AUTO,
         "flush_interval", CTLFLAG_RW, &xbb->flush_interval, 0,
         "send a real flush for N flush requests");

 SYSCTL_ADD_INT(sysctl_ctx, SYSCTL_CHILDREN(sysctl_tree), OID_AUTO,
         "no_coalesce_reqs", CTLFLAG_RW, &xbb->no_coalesce_reqs,0,
         "Don't coalesce contiguous requests");

 SYSCTL_ADD_UQUAD(sysctl_ctx, SYSCTL_CHILDREN(sysctl_tree), OID_AUTO,
    "reqs_received", CTLFLAG_RW, &xbb->reqs_received,
    "how many I/O requests we have received");

 SYSCTL_ADD_UQUAD(sysctl_ctx, SYSCTL_CHILDREN(sysctl_tree), OID_AUTO,
    "reqs_completed", CTLFLAG_RW, &xbb->reqs_completed,
    "how many I/O requests have been completed");

 SYSCTL_ADD_UQUAD(sysctl_ctx, SYSCTL_CHILDREN(sysctl_tree), OID_AUTO,
    "reqs_queued_for_completion", CTLFLAG_RW,
    &xbb->reqs_queued_for_completion,
    "how many I/O requests queued but not yet pushed");

 SYSCTL_ADD_UQUAD(sysctl_ctx, SYSCTL_CHILDREN(sysctl_tree), OID_AUTO,
    "reqs_completed_with_error", CTLFLAG_RW,
    &xbb->reqs_completed_with_error,
    "how many I/O requests completed with error status");

 SYSCTL_ADD_UQUAD(sysctl_ctx, SYSCTL_CHILDREN(sysctl_tree), OID_AUTO,
    "forced_dispatch", CTLFLAG_RW, &xbb->forced_dispatch,
    "how many I/O dispatches were forced");

 SYSCTL_ADD_UQUAD(sysctl_ctx, SYSCTL_CHILDREN(sysctl_tree), OID_AUTO,
    "normal_dispatch", CTLFLAG_RW, &xbb->normal_dispatch,
    "how many I/O dispatches were normal");

 SYSCTL_ADD_UQUAD(sysctl_ctx, SYSCTL_CHILDREN(sysctl_tree), OID_AUTO,
    "total_dispatch", CTLFLAG_RW, &xbb->total_dispatch,
    "total number of I/O dispatches");

 SYSCTL_ADD_UQUAD(sysctl_ctx, SYSCTL_CHILDREN(sysctl_tree), OID_AUTO,
    "kva_shortages", CTLFLAG_RW, &xbb->kva_shortages,
    "how many times we have run out of KVA");

 SYSCTL_ADD_UQUAD(sysctl_ctx, SYSCTL_CHILDREN(sysctl_tree), OID_AUTO,
    "request_shortages", CTLFLAG_RW,
    &xbb->request_shortages,
    "how many times we have run out of requests");

 SYSCTL_ADD_UINT(sysctl_ctx, SYSCTL_CHILDREN(sysctl_tree), OID_AUTO,
          "max_requests", CTLFLAG_RD, &xbb->max_requests, 0,
          "maximum outstanding requests (negotiated)");

 SYSCTL_ADD_UINT(sysctl_ctx, SYSCTL_CHILDREN(sysctl_tree), OID_AUTO,
          "max_request_segments", CTLFLAG_RD,
          &xbb->max_request_segments, 0,
          "maximum number of pages per requests (negotiated)");

 SYSCTL_ADD_UINT(sysctl_ctx, SYSCTL_CHILDREN(sysctl_tree), OID_AUTO,
          "max_request_size", CTLFLAG_RD,
          &xbb->max_request_size, 0,
          "maximum size in bytes of a request (negotiated)");

 SYSCTL_ADD_UINT(sysctl_ctx, SYSCTL_CHILDREN(sysctl_tree), OID_AUTO,
          "ring_pages", CTLFLAG_RD,
          &xbb->ring_config.ring_pages, 0,
          "communication channel pages (negotiated)");
}
