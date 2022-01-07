
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xdrproc_t ;
struct svc_req {int rq_proc; } ;
typedef int nlm4_unlockargs ;
typedef int nlm4_testres ;
typedef int nlm4_testargs ;
typedef int nlm4_shareres ;
typedef int nlm4_shareargs ;
typedef int nlm4_res ;
typedef int nlm4_notify ;
typedef int nlm4_lockargs ;
typedef int nlm4_cancargs ;
typedef scalar_t__ caddr_t ;
typedef scalar_t__ bool_t ;
typedef int argument ;
typedef int SVCXPRT ;
 int memset (char*,int ,int) ;
 int nlm4_cancel_4_svc ;
 int nlm4_cancel_msg_4_svc ;
 int nlm4_cancel_res_4_svc ;
 int nlm4_free_all_4_svc ;
 int nlm4_granted_4_svc ;
 int nlm4_granted_msg_4_svc ;
 int nlm4_granted_res_4_svc ;
 int nlm4_lock_4_svc ;
 int nlm4_lock_msg_4_svc ;
 int nlm4_lock_res_4_svc ;
 int nlm4_nm_lock_4_svc ;
 int nlm4_share_4_svc ;
 int nlm4_test_4_svc ;
 int nlm4_test_msg_4_svc ;
 int nlm4_test_res_4_svc ;
 int nlm4_unlock_4_svc ;
 int nlm4_unlock_msg_4_svc ;
 int nlm4_unlock_res_4_svc ;
 int nlm4_unshare_4_svc ;
 int nlm_prog_4_freeresult (int *,int ,scalar_t__) ;
 int printf (char*) ;
 scalar_t__ stub1 (char*,void*,struct svc_req*) ;
 int svc_freeargs (struct svc_req*,int ,char*) ;
 int svc_freereq (struct svc_req*) ;
 int svc_getargs (struct svc_req*,int ,char*) ;
 int svc_sendreply (struct svc_req*,int ,char*) ;
 int svcerr_decode (struct svc_req*) ;
 int svcerr_noproc (struct svc_req*) ;
 int svcerr_systemerr (struct svc_req*) ;
 int xdr_nlm4_cancargs ;
 int xdr_nlm4_lockargs ;
 int xdr_nlm4_notify ;
 int xdr_nlm4_res ;
 int xdr_nlm4_shareargs ;
 int xdr_nlm4_shareres ;
 int xdr_nlm4_testargs ;
 int xdr_nlm4_testres ;
 int xdr_nlm4_unlockargs ;
 int xdr_void ;

void
nlm_prog_4(struct svc_req *rqstp, SVCXPRT *transp)
{
 union {
  nlm4_testargs nlm4_test_4_arg;
  nlm4_lockargs nlm4_lock_4_arg;
  nlm4_cancargs nlm4_cancel_4_arg;
  nlm4_unlockargs nlm4_unlock_4_arg;
  nlm4_testargs nlm4_granted_4_arg;
  nlm4_testargs nlm4_test_msg_4_arg;
  nlm4_lockargs nlm4_lock_msg_4_arg;
  nlm4_cancargs nlm4_cancel_msg_4_arg;
  nlm4_unlockargs nlm4_unlock_msg_4_arg;
  nlm4_testargs nlm4_granted_msg_4_arg;
  nlm4_testres nlm4_test_res_4_arg;
  nlm4_res nlm4_lock_res_4_arg;
  nlm4_res nlm4_cancel_res_4_arg;
  nlm4_res nlm4_unlock_res_4_arg;
  nlm4_res nlm4_granted_res_4_arg;
  nlm4_shareargs nlm4_share_4_arg;
  nlm4_shareargs nlm4_unshare_4_arg;
  nlm4_lockargs nlm4_nm_lock_4_arg;
  nlm4_notify nlm4_free_all_4_arg;
 } argument;
 union {
  nlm4_testres nlm4_test_4_res;
  nlm4_res nlm4_lock_4_res;
  nlm4_res nlm4_cancel_4_res;
  nlm4_res nlm4_unlock_4_res;
  nlm4_res nlm4_granted_4_res;
  nlm4_shareres nlm4_share_4_res;
  nlm4_shareres nlm4_unshare_4_res;
  nlm4_res nlm4_nm_lock_4_res;
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
  xdr_argument = (xdrproc_t) xdr_nlm4_testargs;
  xdr_result = (xdrproc_t) xdr_nlm4_testres;
  local = (bool_t (*) (char *, void *, struct svc_req *))nlm4_test_4_svc;
  break;

 case 140:
  xdr_argument = (xdrproc_t) xdr_nlm4_lockargs;
  xdr_result = (xdrproc_t) xdr_nlm4_res;
  local = (bool_t (*) (char *, void *, struct svc_req *))nlm4_lock_4_svc;
  break;

 case 147:
  xdr_argument = (xdrproc_t) xdr_nlm4_cancargs;
  xdr_result = (xdrproc_t) xdr_nlm4_res;
  local = (bool_t (*) (char *, void *, struct svc_req *))nlm4_cancel_4_svc;
  break;

 case 132:
  xdr_argument = (xdrproc_t) xdr_nlm4_unlockargs;
  xdr_result = (xdrproc_t) xdr_nlm4_res;
  local = (bool_t (*) (char *, void *, struct svc_req *))nlm4_unlock_4_svc;
  break;

 case 143:
  xdr_argument = (xdrproc_t) xdr_nlm4_testargs;
  xdr_result = (xdrproc_t) xdr_nlm4_res;
  local = (bool_t (*) (char *, void *, struct svc_req *))nlm4_granted_4_svc;
  break;

 case 134:
  xdr_argument = (xdrproc_t) xdr_nlm4_testargs;
  xdr_result = (xdrproc_t) xdr_void;
  local = (bool_t (*) (char *, void *, struct svc_req *))nlm4_test_msg_4_svc;
  break;

 case 139:
  xdr_argument = (xdrproc_t) xdr_nlm4_lockargs;
  xdr_result = (xdrproc_t) xdr_void;
  local = (bool_t (*) (char *, void *, struct svc_req *))nlm4_lock_msg_4_svc;
  break;

 case 146:
  xdr_argument = (xdrproc_t) xdr_nlm4_cancargs;
  xdr_result = (xdrproc_t) xdr_void;
  local = (bool_t (*) (char *, void *, struct svc_req *))nlm4_cancel_msg_4_svc;
  break;

 case 131:
  xdr_argument = (xdrproc_t) xdr_nlm4_unlockargs;
  xdr_result = (xdrproc_t) xdr_void;
  local = (bool_t (*) (char *, void *, struct svc_req *))nlm4_unlock_msg_4_svc;
  break;

 case 142:
  xdr_argument = (xdrproc_t) xdr_nlm4_testargs;
  xdr_result = (xdrproc_t) xdr_void;
  local = (bool_t (*) (char *, void *, struct svc_req *))nlm4_granted_msg_4_svc;
  break;

 case 133:
  xdr_argument = (xdrproc_t) xdr_nlm4_testres;
  xdr_result = (xdrproc_t) xdr_void;
  local = (bool_t (*) (char *, void *, struct svc_req *))nlm4_test_res_4_svc;
  break;

 case 138:
  xdr_argument = (xdrproc_t) xdr_nlm4_res;
  xdr_result = (xdrproc_t) xdr_void;
  local = (bool_t (*) (char *, void *, struct svc_req *))nlm4_lock_res_4_svc;
  break;

 case 145:
  xdr_argument = (xdrproc_t) xdr_nlm4_res;
  xdr_result = (xdrproc_t) xdr_void;
  local = (bool_t (*) (char *, void *, struct svc_req *))nlm4_cancel_res_4_svc;
  break;

 case 130:
  xdr_argument = (xdrproc_t) xdr_nlm4_res;
  xdr_result = (xdrproc_t) xdr_void;
  local = (bool_t (*) (char *, void *, struct svc_req *))nlm4_unlock_res_4_svc;
  break;

 case 141:
  xdr_argument = (xdrproc_t) xdr_nlm4_res;
  xdr_result = (xdrproc_t) xdr_void;
  local = (bool_t (*) (char *, void *, struct svc_req *))nlm4_granted_res_4_svc;
  break;

 case 136:
  xdr_argument = (xdrproc_t) xdr_nlm4_shareargs;
  xdr_result = (xdrproc_t) xdr_nlm4_shareres;
  local = (bool_t (*) (char *, void *, struct svc_req *))nlm4_share_4_svc;
  break;

 case 129:
  xdr_argument = (xdrproc_t) xdr_nlm4_shareargs;
  xdr_result = (xdrproc_t) xdr_nlm4_shareres;
  local = (bool_t (*) (char *, void *, struct svc_req *))nlm4_unshare_4_svc;
  break;

 case 137:
  xdr_argument = (xdrproc_t) xdr_nlm4_lockargs;
  xdr_result = (xdrproc_t) xdr_nlm4_res;
  local = (bool_t (*) (char *, void *, struct svc_req *))nlm4_nm_lock_4_svc;
  break;

 case 144:
  xdr_argument = (xdrproc_t) xdr_nlm4_notify;
  xdr_result = (xdrproc_t) xdr_void;
  local = (bool_t (*) (char *, void *, struct svc_req *))nlm4_free_all_4_svc;
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
 if (!nlm_prog_4_freeresult(transp, xdr_result, (caddr_t) &result))
  printf("unable to free results");

 return;
}
