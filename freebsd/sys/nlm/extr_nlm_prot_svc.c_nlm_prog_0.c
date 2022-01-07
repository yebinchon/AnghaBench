
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xdrproc_t ;
struct svc_req {int rq_proc; } ;
struct nlm_sm_status {int dummy; } ;
typedef scalar_t__ caddr_t ;
typedef scalar_t__ bool_t ;
typedef int argument ;
typedef int SVCXPRT ;




 int memset (char*,int ,int) ;
 int nlm_sm_notify_0_svc ;
 int printf (char*) ;
 scalar_t__ stub1 (char*,void*,struct svc_req*) ;
 int svc_freeargs (struct svc_req*,int ,char*) ;
 int svc_freereq (struct svc_req*) ;
 int svc_getargs (struct svc_req*,int ,char*) ;
 int svc_sendreply (struct svc_req*,int ,char*) ;
 int svcerr_decode (struct svc_req*) ;
 int svcerr_noproc (struct svc_req*) ;
 int svcerr_systemerr (struct svc_req*) ;
 int xdr_nlm_sm_status ;
 int xdr_void ;

void
nlm_prog_0(struct svc_req *rqstp, SVCXPRT *transp)
{
 union {
  struct nlm_sm_status nlm_sm_notify_0_arg;
 } argument;
 char result;
 bool_t retval;
 xdrproc_t xdr_argument, xdr_result;
 bool_t (*local)(char *, void *, struct svc_req *);

 switch (rqstp->rq_proc) {
 case 128:
  (void) svc_sendreply(rqstp,
   (xdrproc_t) xdr_void, (char *)((void*)0));
  svc_freereq(rqstp);
  return;

 case 129:
  xdr_argument = (xdrproc_t) xdr_nlm_sm_status;
  xdr_result = (xdrproc_t) xdr_void;
  local = (bool_t (*) (char *, void *, struct svc_req *))nlm_sm_notify_0_svc;
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

 return;
}
