
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int xdrproc_t ;
struct timeval {scalar_t__ tv_usec; scalar_t__ tv_sec; } ;
struct svc_req {int rq_xprt; } ;
struct sockaddr {int dummy; } ;
struct nlm4_holder {int dummy; } ;
struct TYPE_8__ {int holder; } ;
struct TYPE_9__ {TYPE_1__ nlm4_testrply_u; int stat; } ;
struct TYPE_10__ {TYPE_2__ stat; int cookie; } ;
typedef TYPE_3__ nlm4_testres ;
struct TYPE_11__ {int cookie; int exclusive; int alock; } ;
typedef TYPE_4__ nlm4_testargs ;
struct TYPE_12__ {struct sockaddr* buf; } ;
typedef int CLIENT ;


 int LOCK_V4 ;
 int LOG_DEBUG ;
 int NLM4_TEST_RES ;
 int NLM_VERS4 ;
 int clnt_call (int *,int ,int ,TYPE_3__*,int ,char*,struct timeval) ;
 int debug_level ;
 int * get_client (struct sockaddr*,int ) ;
 int log_from_addr (char*,struct svc_req*) ;
 int memcpy (int *,struct nlm4_holder*,int) ;
 int nlm4_denied ;
 int nlm4_granted ;
 TYPE_5__* svc_getrpccaller (int ) ;
 int syslog (int ,char*,int) ;
 struct nlm4_holder* testlock (int *,int ,int ) ;
 scalar_t__ xdr_nlm4_testres ;
 scalar_t__ xdr_void ;

void *
nlm4_test_msg_4_svc(nlm4_testargs *arg, struct svc_req *rqstp)
{
 nlm4_testres res;
 static char dummy;
 struct sockaddr *addr;
 CLIENT *cli;
 int success;
 struct timeval timeo;
 struct nlm4_holder *holder;

 if (debug_level)
  log_from_addr("nlm4_test_msg", rqstp);

 holder = testlock(&arg->alock, arg->exclusive, LOCK_V4);

 res.cookie = arg->cookie;
 if (holder == ((void*)0)) {
  res.stat.stat = nlm4_granted;
 } else {
  res.stat.stat = nlm4_denied;
  memcpy(&res.stat.nlm4_testrply_u.holder, holder,
      sizeof(struct nlm4_holder));
 }





 addr = svc_getrpccaller(rqstp->rq_xprt)->buf;
 if ((cli = get_client(addr, NLM_VERS4)) != ((void*)0)) {
  timeo.tv_sec = 0;
  timeo.tv_usec = 0;

  success = clnt_call(cli, NLM4_TEST_RES,
      (xdrproc_t)xdr_nlm4_testres, &res,
      (xdrproc_t)xdr_void, &dummy, timeo);

  if (debug_level > 2)
   syslog(LOG_DEBUG, "clnt_call returns %d", success);
 }
 return (((void*)0));
}
