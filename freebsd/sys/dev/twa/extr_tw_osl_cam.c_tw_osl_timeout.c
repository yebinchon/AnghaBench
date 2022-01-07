
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ccb_hdr {int timeout; } ;
union ccb {struct ccb_hdr ccb_h; } ;
struct tw_osli_req_context {scalar_t__ deadline; scalar_t__ orig_req; } ;
struct tw_cl_req_handle {struct tw_osli_req_context* osl_req_ctxt; } ;
typedef int TW_VOID ;


 scalar_t__ tw_osl_get_local_time () ;

TW_VOID
tw_osl_timeout(struct tw_cl_req_handle *req_handle)
{
 struct tw_osli_req_context *req = req_handle->osl_req_ctxt;
 union ccb *ccb = (union ccb *)(req->orig_req);
 struct ccb_hdr *ccb_h = &(ccb->ccb_h);

 req->deadline = tw_osl_get_local_time() + (ccb_h->timeout / 1000);
}
