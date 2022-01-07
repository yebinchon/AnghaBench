
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xdrproc_t ;
struct svc_req {int rq_proc; } ;
typedef int nlm_shareres ;
typedef int nlm_shareargs ;
typedef int nlm_res ;
typedef int nlm_notify ;
typedef int nlm_lockargs ;
typedef scalar_t__ caddr_t ;
typedef scalar_t__ bool_t ;
typedef int argument ;
typedef int SVCXPRT ;
 int memset (char*,int ,int) ;
 int nlm_free_all_3_svc ;
 int nlm_nm_lock_3_svc ;
 int nlm_prog_1 (struct svc_req*,int *) ;
 int nlm_prog_3_freeresult (int *,int ,scalar_t__) ;
 int nlm_share_3_svc ;
 int nlm_unshare_3_svc ;
 int printf (char*) ;
 scalar_t__ stub1 (char*,void*,struct svc_req*) ;
 int svc_freeargs (struct svc_req*,int ,char*) ;
 int svc_freereq (struct svc_req*) ;
 int svc_getargs (struct svc_req*,int ,char*) ;
 int svc_sendreply (struct svc_req*,int ,char*) ;
 int svcerr_decode (struct svc_req*) ;
 int svcerr_noproc (struct svc_req*) ;
 int svcerr_systemerr (struct svc_req*) ;
 int xdr_nlm_lockargs ;
 int xdr_nlm_notify ;
 int xdr_nlm_res ;
 int xdr_nlm_shareargs ;
 int xdr_nlm_shareres ;
 int xdr_void ;

void
nlm_prog_3(struct svc_req *rqstp, SVCXPRT *transp)
{
 union {
  nlm_shareargs nlm_share_3_arg;
  nlm_shareargs nlm_unshare_3_arg;
  nlm_lockargs nlm_nm_lock_3_arg;
  nlm_notify nlm_free_all_3_arg;
 } argument;
 union {
  nlm_shareres nlm_share_3_res;
  nlm_shareres nlm_unshare_3_res;
  nlm_res nlm_nm_lock_3_res;
 } result;
 bool_t retval;
 xdrproc_t xdr_argument, xdr_result;
 bool_t (*local)(char *, void *, struct svc_req *);

 switch (rqstp->rq_proc) {
 case 128:
  (void) svc_sendreply(rqstp,
   (xdrproc_t) xdr_void, (char *)((void*)0));
  svc_freereq(rqstp);
  return;

 case 135:
 case 140:
 case 147:
 case 132:
 case 143:
 case 134:
 case 139:
 case 146:
 case 131:
 case 142:
 case 133:
 case 138:
 case 145:
 case 130:
 case 141:
  nlm_prog_1(rqstp, transp);
  return;

 case 136:
  xdr_argument = (xdrproc_t) xdr_nlm_shareargs;
  xdr_result = (xdrproc_t) xdr_nlm_shareres;
  local = (bool_t (*) (char *, void *, struct svc_req *))nlm_share_3_svc;
  break;

 case 129:
  xdr_argument = (xdrproc_t) xdr_nlm_shareargs;
  xdr_result = (xdrproc_t) xdr_nlm_shareres;
  local = (bool_t (*) (char *, void *, struct svc_req *))nlm_unshare_3_svc;
  break;

 case 137:
  xdr_argument = (xdrproc_t) xdr_nlm_lockargs;
  xdr_result = (xdrproc_t) xdr_nlm_res;
  local = (bool_t (*) (char *, void *, struct svc_req *))nlm_nm_lock_3_svc;
  break;

 case 144:
  xdr_argument = (xdrproc_t) xdr_nlm_notify;
  xdr_result = (xdrproc_t) xdr_void;
  local = (bool_t (*) (char *, void *, struct svc_req *))nlm_free_all_3_svc;
  break;

 default:
  svcerr_noproc(rqstp);
  svc_freereq(rqstp);
  return;
 }
 (void) memset((char *)&argument, 0, sizeof (argument));
 if (!svc_getargs(rqstp, xdr_argument, (char *)(caddr_t) &argument)) {
  svcerr_decode(rqstp);
  svc_freereq(rqstp);
  return;
 }
 retval = (bool_t) (*local)((char *)&argument, (void *)&result, rqstp);
 if (retval > 0 && !svc_sendreply(rqstp, xdr_result, (char *)&result)) {
  svcerr_systemerr(rqstp);
 }
 if (!svc_freeargs(rqstp, xdr_argument, (char *)(caddr_t) &argument)) {
  printf("unable to free arguments");

 }
 svc_freereq(rqstp);
 if (!nlm_prog_3_freeresult(transp, xdr_result, (caddr_t) &result))
  printf("unable to free results");

 return;
}
