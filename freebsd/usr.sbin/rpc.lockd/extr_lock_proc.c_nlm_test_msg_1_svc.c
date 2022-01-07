
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_7__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int xdrproc_t ;
struct timeval {scalar_t__ tv_usec; scalar_t__ tv_sec; } ;
struct svc_req {int rq_xprt; } ;
struct sockaddr {int dummy; } ;
struct nlm_holder {int dummy; } ;
struct nlm4_lock {int dummy; } ;
struct nlm4_holder {int l_len; int l_offset; } ;
struct TYPE_14__ {int l_len; int l_offset; } ;
struct TYPE_9__ {TYPE_7__ holder; } ;
struct TYPE_10__ {TYPE_1__ nlm_testrply_u; int stat; } ;
struct TYPE_11__ {TYPE_2__ stat; int cookie; } ;
typedef TYPE_3__ nlm_testres ;
struct TYPE_12__ {int cookie; int exclusive; int alock; } ;
typedef TYPE_4__ nlm_testargs ;
struct TYPE_13__ {struct sockaddr* buf; } ;
typedef int CLIENT ;


 int LOG_DEBUG ;
 int NLM_TEST_RES ;
 int NLM_VERS ;
 int clnt_call (int *,int ,int ,TYPE_3__*,int ,char*,struct timeval) ;
 int debug_level ;
 int * get_client (struct sockaddr*,int ) ;
 int log_from_addr (char*,struct svc_req*) ;
 int memcpy (TYPE_7__*,struct nlm4_holder*,int) ;
 int nlm_denied ;
 int nlm_granted ;
 int nlmtonlm4 (int *,struct nlm4_lock*) ;
 TYPE_5__* svc_getrpccaller (int ) ;
 int syslog (int ,char*,int) ;
 struct nlm4_holder* testlock (struct nlm4_lock*,int ,int ) ;
 scalar_t__ xdr_nlm_testres ;
 scalar_t__ xdr_void ;

void *
nlm_test_msg_1_svc(nlm_testargs *arg, struct svc_req *rqstp)
{
 nlm_testres res;
 static char dummy;
 struct sockaddr *addr;
 CLIENT *cli;
 int success;
 struct timeval timeo;
 struct nlm4_lock arg4;
 struct nlm4_holder *holder;

 nlmtonlm4(&arg->alock, &arg4);

 if (debug_level)
  log_from_addr("nlm_test_msg", rqstp);

 holder = testlock(&arg4, arg->exclusive, 0);

 res.cookie = arg->cookie;
 if (holder == ((void*)0)) {
  res.stat.stat = nlm_granted;
 } else {
  res.stat.stat = nlm_denied;
  memcpy(&res.stat.nlm_testrply_u.holder, holder,
      sizeof(struct nlm_holder));
  res.stat.nlm_testrply_u.holder.l_offset = holder->l_offset;
  res.stat.nlm_testrply_u.holder.l_len = holder->l_len;
 }





 addr = svc_getrpccaller(rqstp->rq_xprt)->buf;
 if ((cli = get_client(addr, NLM_VERS)) != ((void*)0)) {
  timeo.tv_sec = 0;
  timeo.tv_usec = 0;

  success = clnt_call(cli, NLM_TEST_RES,
      (xdrproc_t)xdr_nlm_testres, &res,
      (xdrproc_t)xdr_void, &dummy, timeo);

  if (debug_level > 2)
   syslog(LOG_DEBUG, "clnt_call returns %d", success);
 }
 return (((void*)0));
}
