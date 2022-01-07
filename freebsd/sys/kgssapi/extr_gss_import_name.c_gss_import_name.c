
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct import_name_res {scalar_t__ major_status; scalar_t__ minor_status; int output_name; } ;
struct import_name_args {int input_name_type; int input_name_buffer; } ;
struct _gss_name_t {int dummy; } ;
typedef int res ;
typedef TYPE_1__* gss_name_t ;
typedef int * gss_buffer_t ;
typedef int gss_OID ;
typedef enum clnt_stat { ____Placeholder_clnt_stat } clnt_stat ;
struct TYPE_5__ {int handle; } ;
typedef scalar_t__ OM_uint32 ;
typedef int CLIENT ;


 int CLNT_RELEASE (int *) ;
 TYPE_1__* GSS_C_NO_NAME ;
 scalar_t__ GSS_S_COMPLETE ;
 scalar_t__ GSS_S_FAILURE ;
 int M_GSSAPI ;
 int M_WAITOK ;
 int RPC_SUCCESS ;
 int bzero (struct import_name_res*,int) ;
 int gssd_import_name_1 (struct import_name_args*,struct import_name_res*,int *) ;
 int * kgss_gssd_client () ;
 TYPE_1__* malloc (int,int ,int ) ;

OM_uint32
gss_import_name(OM_uint32 *minor_status,
    const gss_buffer_t input_name_buffer,
    const gss_OID input_name_type,
    gss_name_t *output_name)
{
 struct import_name_res res;
 struct import_name_args args;
 enum clnt_stat stat;
 gss_name_t name;
 CLIENT *cl;

 *minor_status = 0;
 *output_name = GSS_C_NO_NAME;

 cl = kgss_gssd_client();
 if (cl == ((void*)0))
  return (GSS_S_FAILURE);

 args.input_name_buffer = *input_name_buffer;
 args.input_name_type = input_name_type;

 bzero(&res, sizeof(res));
 stat = gssd_import_name_1(&args, &res, cl);
 CLNT_RELEASE(cl);
 if (stat != RPC_SUCCESS) {
  *minor_status = stat;
  return (GSS_S_FAILURE);
 }

 if (res.major_status != GSS_S_COMPLETE) {
  *minor_status = res.minor_status;
  return (res.major_status);
 }

 name = malloc(sizeof(struct _gss_name_t), M_GSSAPI, M_WAITOK);
 name->handle = res.output_name;
 *minor_status = 0;
 *output_name = name;

 return (GSS_S_COMPLETE);
}
