
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int xdrproc_t ;
struct TYPE_6__ {scalar_t__ oa_flavor; } ;
struct svc_req {int rq_proc; TYPE_1__ rq_cred; } ;
struct TYPE_7__ {int uid; int gid; int gidlen; int* gidlist; } ;
typedef TYPE_2__ rpc_gss_ucred_t ;
struct TYPE_8__ {int service; char* mechanism; } ;
typedef TYPE_3__ rpc_gss_rawcred_t ;
typedef int SVCXPRT ;


 scalar_t__ RPCSEC_GSS ;
 int printf (char*,...) ;
 int rpc_gss_getcred (struct svc_req*,TYPE_3__**,TYPE_2__**,int *) ;
 int svc_getargs (int *,int ,char*) ;
 int svc_sendreply (int *,int ,char*) ;
 int svcerr_decode (int *) ;
 int svcerr_noproc (int *) ;
 int svcerr_systemerr (int *) ;
 int svcerr_weakauth (int *) ;
 int xdr_int ;
 int xdr_void ;

__attribute__((used)) static void
server_program_1(struct svc_req *rqstp, register SVCXPRT *transp)
{
 rpc_gss_rawcred_t *rcred;
 rpc_gss_ucred_t *ucred;
 int i, num;

 if (rqstp->rq_cred.oa_flavor != RPCSEC_GSS) {
  svcerr_weakauth(transp);
  return;
 }

 if (!rpc_gss_getcred(rqstp, &rcred, &ucred, ((void*)0))) {
  svcerr_systemerr(transp);
  return;
 }

 printf("svc=%d, mech=%s, uid=%d, gid=%d, gids={",
     rcred->service, rcred->mechanism, ucred->uid, ucred->gid);
 for (i = 0; i < ucred->gidlen; i++) {
  if (i > 0) printf(",");
  printf("%d", ucred->gidlist[i]);
 }
 printf("}\n");

 switch (rqstp->rq_proc) {
 case 0:
  if (!svc_getargs(transp, (xdrproc_t) xdr_void, 0)) {
   svcerr_decode(transp);
   goto out;
  }
  if (!svc_sendreply(transp, (xdrproc_t) xdr_void, 0)) {
   svcerr_systemerr(transp);
  }
  goto out;

 case 1:
  if (!svc_getargs(transp, (xdrproc_t) xdr_int,
   (char *) &num)) {
   svcerr_decode(transp);
   goto out;
  }
  num += 100;
  if (!svc_sendreply(transp, (xdrproc_t) xdr_int,
   (char *) &num)) {
   svcerr_systemerr(transp);
  }
  goto out;

 default:
  svcerr_noproc(transp);
  goto out;
 }

out:
 return;
}
