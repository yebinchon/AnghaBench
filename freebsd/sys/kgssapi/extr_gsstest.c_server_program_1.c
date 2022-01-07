
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
 int svc_freereq (struct svc_req*) ;
 int svc_getargs (struct svc_req*,int ,char*) ;
 int svc_sendreply (struct svc_req*,int ,char*) ;
 int svcerr_decode (struct svc_req*) ;
 int svcerr_noproc (struct svc_req*) ;
 int svcerr_systemerr (struct svc_req*) ;
 int svcerr_weakauth (struct svc_req*) ;
 int xdr_int ;
 int xdr_void ;

__attribute__((used)) static void
server_program_1(struct svc_req *rqstp, register SVCXPRT *transp)
{
 rpc_gss_rawcred_t *rcred;
 rpc_gss_ucred_t *ucred;
 int i, num;

 if (rqstp->rq_cred.oa_flavor != RPCSEC_GSS) {
  svcerr_weakauth(rqstp);
  return;
 }

 if (!rpc_gss_getcred(rqstp, &rcred, &ucred, ((void*)0))) {
  svcerr_systemerr(rqstp);
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
  if (!svc_getargs(rqstp, (xdrproc_t) xdr_void, 0)) {
   svcerr_decode(rqstp);
   goto out;
  }
  if (!svc_sendreply(rqstp, (xdrproc_t) xdr_void, 0)) {
   svcerr_systemerr(rqstp);
  }
  goto out;

 case 1:
  if (!svc_getargs(rqstp, (xdrproc_t) xdr_int,
   (char *) &num)) {
   svcerr_decode(rqstp);
   goto out;
  }
  num += 100;
  if (!svc_sendreply(rqstp, (xdrproc_t) xdr_int,
   (char *) &num)) {
   svcerr_systemerr(rqstp);
  }
  goto out;

 default:
  svcerr_noproc(rqstp);
  goto out;
 }

out:
 svc_freereq(rqstp);
 return;
}
