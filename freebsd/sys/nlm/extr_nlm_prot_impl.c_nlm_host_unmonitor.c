
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int xdrproc_t ;
struct timeval {int tv_sec; scalar_t__ tv_usec; } ;
struct nlm_host {int nh_caller_name; int nh_monstate; int nh_sysid; } ;
struct TYPE_7__ {scalar_t__ res_stat; } ;
typedef TYPE_2__ sm_stat_res ;
struct TYPE_6__ {char* my_name; int my_proc; int my_vers; int my_prog; } ;
struct TYPE_8__ {int mon_name; TYPE_1__ my_id; } ;
typedef TYPE_3__ mon_id ;
typedef enum clnt_stat { ____Placeholder_clnt_stat } clnt_stat ;


 int CLNT_CALL (int ,int ,int ,TYPE_3__*,int ,TYPE_2__*,struct timeval) ;
 int NLM_DEBUG (int,char*,int,int ) ;
 int NLM_ERR (char*,int) ;
 int NLM_PROG ;
 int NLM_SM ;
 int NLM_SM_NOTIFY ;
 int NLM_UNMONITORED ;
 int RPC_SUCCESS ;
 int SM_UNMON ;
 int nlm_nsm ;
 scalar_t__ stat_fail ;
 scalar_t__ xdr_mon ;
 scalar_t__ xdr_sm_stat ;

__attribute__((used)) static void
nlm_host_unmonitor(struct nlm_host *host)
{
 mon_id smmonid;
 sm_stat_res smstat;
 struct timeval timo;
 enum clnt_stat stat;

 NLM_DEBUG(1, "NLM: unmonitoring %s (sysid %d)\n",
     host->nh_caller_name, host->nh_sysid);






 smmonid.mon_name = host->nh_caller_name;
 smmonid.my_id.my_name = "localhost";
 smmonid.my_id.my_prog = NLM_PROG;
 smmonid.my_id.my_vers = NLM_SM;
 smmonid.my_id.my_proc = NLM_SM_NOTIFY;

 timo.tv_sec = 25;
 timo.tv_usec = 0;
 stat = CLNT_CALL(nlm_nsm, SM_UNMON,
     (xdrproc_t) xdr_mon, &smmonid,
     (xdrproc_t) xdr_sm_stat, &smstat, timo);

 if (stat != RPC_SUCCESS) {
  NLM_ERR("Failed to contact local NSM - rpc error %d\n", stat);
  return;
 }
 if (smstat.res_stat == stat_fail) {
  NLM_ERR("Local NSM refuses to unmonitor %s\n",
      host->nh_caller_name);
  return;
 }

 host->nh_monstate = NLM_UNMONITORED;
}
