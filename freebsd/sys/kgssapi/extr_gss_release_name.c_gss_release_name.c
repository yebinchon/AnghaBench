
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct release_name_res {scalar_t__ major_status; scalar_t__ minor_status; } ;
struct release_name_args {int input_name; } ;
typedef TYPE_1__* gss_name_t ;
typedef enum clnt_stat { ____Placeholder_clnt_stat } clnt_stat ;
struct TYPE_4__ {int handle; } ;
typedef scalar_t__ OM_uint32 ;
typedef int CLIENT ;


 int CLNT_RELEASE (int *) ;
 scalar_t__ GSS_S_COMPLETE ;
 scalar_t__ GSS_S_FAILURE ;
 int M_GSSAPI ;
 int RPC_SUCCESS ;
 int free (TYPE_1__*,int ) ;
 int gssd_release_name_1 (struct release_name_args*,struct release_name_res*,int *) ;
 int * kgss_gssd_client () ;
 int kgss_gssd_handle ;

OM_uint32
gss_release_name(OM_uint32 *minor_status, gss_name_t *input_name)
{
 struct release_name_res res;
 struct release_name_args args;
 enum clnt_stat stat;
 gss_name_t name;
 CLIENT *cl;

 *minor_status = 0;

 if (!kgss_gssd_handle)
  return (GSS_S_FAILURE);

 if (*input_name) {
  name = *input_name;
  args.input_name = name->handle;

  cl = kgss_gssd_client();
  if (cl == ((void*)0))
   return (GSS_S_FAILURE);
  stat = gssd_release_name_1(&args, &res, cl);
  CLNT_RELEASE(cl);
  if (stat != RPC_SUCCESS) {
   *minor_status = stat;
   return (GSS_S_FAILURE);
  }

  free(name, M_GSSAPI);
  *input_name = ((void*)0);

  if (res.major_status != GSS_S_COMPLETE) {
   *minor_status = res.minor_status;
   return (res.major_status);
  }
 }

 return (GSS_S_COMPLETE);
}
