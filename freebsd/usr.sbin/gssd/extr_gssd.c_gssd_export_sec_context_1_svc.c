
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_5__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct svc_req {int dummy; } ;
typedef scalar_t__ gss_ctx_id_t ;
struct TYPE_8__ {int * value; scalar_t__ length; } ;
struct TYPE_6__ {scalar_t__ minor_status; scalar_t__ major_status; TYPE_5__ interprocess_token; int format; } ;
typedef TYPE_1__ export_sec_context_res ;
struct TYPE_7__ {int ctx; } ;
typedef TYPE_2__ export_sec_context_args ;
typedef int bool_t ;


 scalar_t__ GSS_S_FAILURE ;
 int KGSS_HEIMDAL_1_1 ;
 int TRUE ;
 scalar_t__ gss_export_sec_context (scalar_t__*,scalar_t__*,TYPE_5__*) ;
 int gssd_delete_resource (int ) ;
 scalar_t__ gssd_find_resource (int ) ;
 int gssd_verbose_out (char*,unsigned int,int) ;

bool_t
gssd_export_sec_context_1_svc(export_sec_context_args *argp, export_sec_context_res *result, struct svc_req *rqstp)
{
 gss_ctx_id_t ctx = gssd_find_resource(argp->ctx);

 if (ctx) {
  result->major_status = gss_export_sec_context(
   &result->minor_status, &ctx,
   &result->interprocess_token);
  result->format = KGSS_HEIMDAL_1_1;
  gssd_delete_resource(argp->ctx);
 } else {
  result->major_status = GSS_S_FAILURE;
  result->minor_status = 0;
  result->interprocess_token.length = 0;
  result->interprocess_token.value = ((void*)0);
 }
 gssd_verbose_out("gssd_export_sec_context: done major=0x%x minor=%d\n",
     (unsigned int)result->major_status, (int)result->minor_status);

 return (TRUE);
}
