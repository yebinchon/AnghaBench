
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct svc_req {int dummy; } ;
typedef int gss_name_t ;
typedef int gss_ctx_id_t ;
typedef int gss_cred_id_t ;
typedef int bool_t ;
struct TYPE_6__ {void* delegated_cred_handle; void* src_name; void* ctx; scalar_t__ major_status; scalar_t__ minor_status; int time_rec; int ret_flags; int output_token; int mech_type; } ;
typedef TYPE_1__ accept_sec_context_res ;
struct TYPE_7__ {void* ctx; int input_chan_bindings; int input_token; void* cred; } ;
typedef TYPE_2__ accept_sec_context_args ;


 int GSS_C_NO_CONTEXT ;
 int GSS_C_NO_CREDENTIAL ;
 scalar_t__ GSS_S_COMPLETE ;
 scalar_t__ GSS_S_CONTEXT_EXPIRED ;
 scalar_t__ GSS_S_CONTINUE_NEEDED ;
 scalar_t__ GSS_S_CREDENTIALS_EXPIRED ;
 int TRUE ;
 scalar_t__ gss_accept_sec_context (scalar_t__*,int *,int ,int *,int ,int *,int *,int *,int *,int *,int *) ;
 int gssd_find_resource (void*) ;
 void* gssd_make_resource (int ) ;
 int gssd_verbose_out (char*,...) ;
 int memset (TYPE_1__*,int ,int) ;

bool_t
gssd_accept_sec_context_1_svc(accept_sec_context_args *argp, accept_sec_context_res *result, struct svc_req *rqstp)
{
 gss_ctx_id_t ctx = GSS_C_NO_CONTEXT;
 gss_cred_id_t cred = GSS_C_NO_CREDENTIAL;
 gss_name_t src_name;
 gss_cred_id_t delegated_cred_handle;

 memset(result, 0, sizeof(*result));
 if (argp->ctx) {
  ctx = gssd_find_resource(argp->ctx);
  if (!ctx) {
   result->major_status = GSS_S_CONTEXT_EXPIRED;
   gssd_verbose_out("gssd_accept_sec_context: ctx"
       " resource not found\n");
   return (TRUE);
  }
 }
 if (argp->cred) {
  cred = gssd_find_resource(argp->cred);
  if (!cred) {
   result->major_status = GSS_S_CREDENTIALS_EXPIRED;
   gssd_verbose_out("gssd_accept_sec_context: cred"
       " resource not found\n");
   return (TRUE);
  }
 }

 memset(result, 0, sizeof(*result));
 result->major_status = gss_accept_sec_context(&result->minor_status,
     &ctx, cred, &argp->input_token, argp->input_chan_bindings,
     &src_name, &result->mech_type, &result->output_token,
     &result->ret_flags, &result->time_rec,
     &delegated_cred_handle);
 gssd_verbose_out("gssd_accept_sec_context: done major=0x%x minor=%d\n",
     (unsigned int)result->major_status, (int)result->minor_status);

 if (result->major_status == GSS_S_COMPLETE
     || result->major_status == GSS_S_CONTINUE_NEEDED) {
  if (argp->ctx)
   result->ctx = argp->ctx;
  else
   result->ctx = gssd_make_resource(ctx);
  result->src_name = gssd_make_resource(src_name);
  result->delegated_cred_handle =
   gssd_make_resource(delegated_cred_handle);
 }

 return (TRUE);
}
