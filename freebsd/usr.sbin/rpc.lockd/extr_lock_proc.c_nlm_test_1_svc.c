
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_7__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct svc_req {int dummy; } ;
struct nlm_holder {int dummy; } ;
struct nlm4_lock {int dummy; } ;
struct nlm4_holder {int l_len; int l_offset; } ;
struct TYPE_12__ {int l_len; int l_offset; } ;
struct TYPE_8__ {TYPE_7__ holder; } ;
struct TYPE_9__ {TYPE_1__ nlm_testrply_u; int stat; } ;
struct TYPE_10__ {TYPE_2__ stat; int cookie; } ;
typedef TYPE_3__ nlm_testres ;
struct TYPE_11__ {int cookie; int exclusive; int alock; } ;
typedef TYPE_4__ nlm_testargs ;


 scalar_t__ debug_level ;
 int log_from_addr (char*,struct svc_req*) ;
 int memcpy (TYPE_7__*,struct nlm4_holder*,int) ;
 int nlm_denied ;
 int nlm_granted ;
 int nlmtonlm4 (int *,struct nlm4_lock*) ;
 struct nlm4_holder* testlock (struct nlm4_lock*,int ,int ) ;

nlm_testres *
nlm_test_1_svc(nlm_testargs *arg, struct svc_req *rqstp)
{
 static nlm_testres res;
 struct nlm4_lock arg4;
 struct nlm4_holder *holder;
 nlmtonlm4(&arg->alock, &arg4);

 if (debug_level)
  log_from_addr("nlm_test", rqstp);

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
 return (&res);
}
