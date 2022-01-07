
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct svc_req {int dummy; } ;
struct nlm4_holder {int dummy; } ;
struct TYPE_8__ {int holder; } ;
struct TYPE_9__ {TYPE_1__ nlm4_testrply_u; int stat; } ;
struct TYPE_10__ {TYPE_2__ stat; int cookie; } ;
typedef TYPE_3__ nlm4_testres ;
struct TYPE_12__ {char* caller_name; char* svid; scalar_t__ l_len; scalar_t__ l_offset; int oh; int fh; } ;
struct TYPE_11__ {int cookie; scalar_t__ exclusive; TYPE_5__ alock; } ;
typedef TYPE_4__ nlm4_testargs ;


 int LOCK_V4 ;
 int LOG_DEBUG ;
 int debug_level ;
 int log_from_addr (char*,struct svc_req*) ;
 int log_netobj (int *) ;
 int memcpy (int *,struct nlm4_holder*,int) ;
 int nlm4_denied ;
 int nlm4_granted ;
 int syslog (int ,char*,...) ;
 struct nlm4_holder* testlock (TYPE_5__*,scalar_t__,int ) ;

nlm4_testres *
nlm4_test_4_svc(nlm4_testargs *arg, struct svc_req *rqstp)
{
 static nlm4_testres res;
 struct nlm4_holder *holder;

 if (debug_level)
  log_from_addr("nlm4_test", rqstp);
 if (debug_level > 5) {
  syslog(LOG_DEBUG, "Locking arguments:\n");
  log_netobj(&(arg->cookie));
  syslog(LOG_DEBUG, "Alock arguments:\n");
  syslog(LOG_DEBUG, "Caller Name: %s\n",arg->alock.caller_name);
  syslog(LOG_DEBUG, "File Handle:\n");
  log_netobj(&(arg->alock.fh));
  syslog(LOG_DEBUG, "Owner Handle:\n");
  log_netobj(&(arg->alock.oh));
  syslog(LOG_DEBUG, "SVID:        %d\n", arg->alock.svid);
  syslog(LOG_DEBUG, "Lock Offset: %llu\n",
      (unsigned long long)arg->alock.l_offset);
  syslog(LOG_DEBUG, "Lock Length: %llu\n",
      (unsigned long long)arg->alock.l_len);
  syslog(LOG_DEBUG, "Exclusive:   %s\n",
      (arg->exclusive ? "true" : "false"));
 }

 holder = testlock(&arg->alock, arg->exclusive, LOCK_V4);
 res.cookie = arg->cookie;
 if (holder == ((void*)0)) {
  res.stat.stat = nlm4_granted;
 } else {
  res.stat.stat = nlm4_denied;
  memcpy(&res.stat.nlm4_testrply_u.holder, holder,
      sizeof(struct nlm4_holder));
 }
 return (&res);
}
