
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tw_osli_req_context {scalar_t__ deadline; } ;
struct tw_cl_req_handle {struct tw_osli_req_context* osl_req_ctxt; } ;
typedef int TW_VOID ;



TW_VOID
tw_osl_untimeout(struct tw_cl_req_handle *req_handle)
{
 struct tw_osli_req_context *req = req_handle->osl_req_ctxt;

 req->deadline = 0;
}
