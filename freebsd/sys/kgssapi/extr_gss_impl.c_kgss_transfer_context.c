
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int xdrproc_t ;
struct export_sec_context_res {int interprocess_token; int format; } ;
struct export_sec_context_args {scalar_t__ ctx; } ;
typedef int res ;
typedef TYPE_1__* gss_ctx_id_t ;
typedef enum clnt_stat { ____Placeholder_clnt_stat } clnt_stat ;
struct TYPE_4__ {scalar_t__ handle; } ;
typedef int OM_uint32 ;


 int GSS_S_FAILURE ;
 int KGSS_IMPORT (TYPE_1__*,int ,int *) ;
 int RPC_SUCCESS ;
 int bzero (struct export_sec_context_res*,int) ;
 int gssd_export_sec_context_1 (struct export_sec_context_args*,struct export_sec_context_res*,int ) ;
 int kgss_gssd_handle ;
 scalar_t__ xdr_export_sec_context_res ;
 int xdr_free (int ,struct export_sec_context_res*) ;

OM_uint32
kgss_transfer_context(gss_ctx_id_t ctx)
{
 struct export_sec_context_res res;
 struct export_sec_context_args args;
 enum clnt_stat stat;
 OM_uint32 maj_stat;

 if (!kgss_gssd_handle)
  return (GSS_S_FAILURE);

 args.ctx = ctx->handle;
 bzero(&res, sizeof(res));
 stat = gssd_export_sec_context_1(&args, &res, kgss_gssd_handle);
 if (stat != RPC_SUCCESS) {
  return (GSS_S_FAILURE);
 }

 maj_stat = KGSS_IMPORT(ctx, res.format, &res.interprocess_token);
 ctx->handle = 0;

 xdr_free((xdrproc_t) xdr_export_sec_context_res, &res);

 return (maj_stat);
}
