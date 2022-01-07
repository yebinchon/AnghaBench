
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xdrproc_t ;
struct svc_req {int rq_proc; } ;
struct nlm_unlockargs {int dummy; } ;
struct nlm_testargs {int dummy; } ;
struct nlm_lockargs {int dummy; } ;
struct nlm_cancargs {int dummy; } ;
typedef int nlm_testres ;
typedef int nlm_res ;
typedef scalar_t__ caddr_t ;
typedef scalar_t__ bool_t ;
typedef int argument ;
typedef int SVCXPRT ;
 int memset (char*,int ,int) ;
 int nlm_cancel_1_svc ;
 int nlm_cancel_msg_1_svc ;
 int nlm_cancel_res_1_svc ;
 int nlm_granted_1_svc ;
 int nlm_granted_msg_1_svc ;
 int nlm_granted_res_1_svc ;
 int nlm_lock_1_svc ;
 int nlm_lock_msg_1_svc ;
 int nlm_lock_res_1_svc ;
 int nlm_prog_1_freeresult (int *,int ,scalar_t__) ;
 int nlm_test_1_svc ;
 int nlm_test_msg_1_svc ;
 int nlm_test_res_1_svc ;
 int nlm_unlock_1_svc ;
 int nlm_unlock_msg_1_svc ;
 int nlm_unlock_res_1_svc ;
 int printf (char*) ;
 scalar_t__ stub1 (char*,void*,struct svc_req*) ;
 int svc_freeargs (struct svc_req*,int ,char*) ;
 int svc_freereq (struct svc_req*) ;
 int svc_getargs (struct svc_req*,int ,char*) ;
 int svc_sendreply (struct svc_req*,int ,char*) ;
 int svcerr_decode (struct svc_req*) ;
 int svcerr_noproc (struct svc_req*) ;
 int svcerr_systemerr (struct svc_req*) ;
 int xdr_nlm_cancargs ;
 int xdr_nlm_lockargs ;
 int xdr_nlm_res ;
 int xdr_nlm_testargs ;
 int xdr_nlm_testres ;
 int xdr_nlm_unlockargs ;
 int xdr_void ;

void
nlm_prog_1(struct svc_req *rqstp, SVCXPRT *transp)
{
 union {
  struct nlm_testargs nlm_test_1_arg;
  struct nlm_lockargs nlm_lock_1_arg;
  struct nlm_cancargs nlm_cancel_1_arg;
  struct nlm_unlockargs nlm_unlock_1_arg;
  struct nlm_testargs nlm_granted_1_arg;
  struct nlm_testargs nlm_test_msg_1_arg;
  struct nlm_lockargs nlm_lock_msg_1_arg;
  struct nlm_cancargs nlm_cancel_msg_1_arg;
  struct nlm_unlockargs nlm_unlock_msg_1_arg;
  struct nlm_testargs nlm_granted_msg_1_arg;
  nlm_testres nlm_test_res_1_arg;
  nlm_res nlm_lock_res_1_arg;
  nlm_res nlm_cancel_res_1_arg;
  nlm_res nlm_unlock_res_1_arg;
  nlm_res nlm_granted_res_1_arg;
 } argument;
 union {
  nlm_testres nlm_test_1_res;
  nlm_res nlm_lock_1_res;
  nlm_res nlm_cancel_1_res;
  nlm_res nlm_unlock_1_res;
  nlm_res nlm_granted_1_res;
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

 case 134:
  xdr_argument = (xdrproc_t) xdr_nlm_testargs;
  xdr_result = (xdrproc_t) xdr_nlm_testres;
  local = (bool_t (*) (char *, void *, struct svc_req *))nlm_test_1_svc;
  break;

 case 137:
  xdr_argument = (xdrproc_t) xdr_nlm_lockargs;
  xdr_result = (xdrproc_t) xdr_nlm_res;
  local = (bool_t (*) (char *, void *, struct svc_req *))nlm_lock_1_svc;
  break;

 case 143:
  xdr_argument = (xdrproc_t) xdr_nlm_cancargs;
  xdr_result = (xdrproc_t) xdr_nlm_res;
  local = (bool_t (*) (char *, void *, struct svc_req *))nlm_cancel_1_svc;
  break;

 case 131:
  xdr_argument = (xdrproc_t) xdr_nlm_unlockargs;
  xdr_result = (xdrproc_t) xdr_nlm_res;
  local = (bool_t (*) (char *, void *, struct svc_req *))nlm_unlock_1_svc;
  break;

 case 140:
  xdr_argument = (xdrproc_t) xdr_nlm_testargs;
  xdr_result = (xdrproc_t) xdr_nlm_res;
  local = (bool_t (*) (char *, void *, struct svc_req *))nlm_granted_1_svc;
  break;

 case 133:
  xdr_argument = (xdrproc_t) xdr_nlm_testargs;
  xdr_result = (xdrproc_t) xdr_void;
  local = (bool_t (*) (char *, void *, struct svc_req *))nlm_test_msg_1_svc;
  break;

 case 136:
  xdr_argument = (xdrproc_t) xdr_nlm_lockargs;
  xdr_result = (xdrproc_t) xdr_void;
  local = (bool_t (*) (char *, void *, struct svc_req *))nlm_lock_msg_1_svc;
  break;

 case 142:
  xdr_argument = (xdrproc_t) xdr_nlm_cancargs;
  xdr_result = (xdrproc_t) xdr_void;
  local = (bool_t (*) (char *, void *, struct svc_req *))nlm_cancel_msg_1_svc;
  break;

 case 130:
  xdr_argument = (xdrproc_t) xdr_nlm_unlockargs;
  xdr_result = (xdrproc_t) xdr_void;
  local = (bool_t (*) (char *, void *, struct svc_req *))nlm_unlock_msg_1_svc;
  break;

 case 139:
  xdr_argument = (xdrproc_t) xdr_nlm_testargs;
  xdr_result = (xdrproc_t) xdr_void;
  local = (bool_t (*) (char *, void *, struct svc_req *))nlm_granted_msg_1_svc;
  break;

 case 132:
  xdr_argument = (xdrproc_t) xdr_nlm_testres;
  xdr_result = (xdrproc_t) xdr_void;
  local = (bool_t (*) (char *, void *, struct svc_req *))nlm_test_res_1_svc;
  break;

 case 135:
  xdr_argument = (xdrproc_t) xdr_nlm_res;
  xdr_result = (xdrproc_t) xdr_void;
  local = (bool_t (*) (char *, void *, struct svc_req *))nlm_lock_res_1_svc;
  break;

 case 141:
  xdr_argument = (xdrproc_t) xdr_nlm_res;
  xdr_result = (xdrproc_t) xdr_void;
  local = (bool_t (*) (char *, void *, struct svc_req *))nlm_cancel_res_1_svc;
  break;

 case 129:
  xdr_argument = (xdrproc_t) xdr_nlm_res;
  xdr_result = (xdrproc_t) xdr_void;
  local = (bool_t (*) (char *, void *, struct svc_req *))nlm_unlock_res_1_svc;
  break;

 case 138:
  xdr_argument = (xdrproc_t) xdr_nlm_res;
  xdr_result = (xdrproc_t) xdr_void;
  local = (bool_t (*) (char *, void *, struct svc_req *))nlm_granted_res_1_svc;
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
 if (!nlm_prog_1_freeresult(transp, xdr_result, (caddr_t) &result))
  printf("unable to free results");

 return;
}
