
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xdrproc_t ;
struct display_status_res {scalar_t__ major_status; scalar_t__ minor_status; scalar_t__ message_context; int status_string; } ;
struct display_status_args {int status_type; scalar_t__ message_context; int mech_type; scalar_t__ status_value; } ;
typedef int res ;
typedef int gss_buffer_t ;
typedef int gss_OID ;
typedef enum clnt_stat { ____Placeholder_clnt_stat } clnt_stat ;
typedef scalar_t__ OM_uint32 ;
typedef int CLIENT ;


 int CLNT_RELEASE (int *) ;
 scalar_t__ GSS_S_COMPLETE ;
 scalar_t__ GSS_S_FAILURE ;
 int RPC_SUCCESS ;
 int bzero (struct display_status_res*,int) ;
 int gssd_display_status_1 (struct display_status_args*,struct display_status_res*,int *) ;
 int kgss_copy_buffer (int *,int ) ;
 int * kgss_gssd_client () ;
 scalar_t__ xdr_display_status_res ;
 int xdr_free (int ,struct display_status_res*) ;

OM_uint32
gss_display_status(OM_uint32 *minor_status,
    OM_uint32 status_value,
    int status_type,
    const gss_OID mech_type,
    OM_uint32 *message_context,
    gss_buffer_t status_string)
{
 struct display_status_res res;
 struct display_status_args args;
 enum clnt_stat stat;
 CLIENT *cl;

 *minor_status = 0;
 cl = kgss_gssd_client();
 if (cl == ((void*)0))
  return (GSS_S_FAILURE);

 args.status_value = status_value;
 args.status_type = status_type;
 args.mech_type = mech_type;
 args.message_context = *message_context;

 bzero(&res, sizeof(res));
 stat = gssd_display_status_1(&args, &res, cl);
 CLNT_RELEASE(cl);
 if (stat != RPC_SUCCESS) {
  *minor_status = stat;
  return (GSS_S_FAILURE);
 }

 if (res.major_status != GSS_S_COMPLETE) {
  *minor_status = res.minor_status;
  return (res.major_status);
 }

 *message_context = res.message_context;
 kgss_copy_buffer(&res.status_string, status_string);
 xdr_free((xdrproc_t) xdr_display_status_res, &res);

 return (GSS_S_COMPLETE);
}
