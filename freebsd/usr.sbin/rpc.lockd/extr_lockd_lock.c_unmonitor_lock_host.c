
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int xdrproc_t ;
struct sm_stat {int dummy; } ;
struct TYPE_2__ {char* my_name; int my_proc; int my_vers; int my_prog; } ;
struct mon_id {char* mon_name; TYPE_1__ my_id; } ;
struct host {int refcnt; int name; } ;
typedef int smon_id ;


 struct host* LIST_FIRST (int *) ;
 struct host* LIST_NEXT (struct host*,int ) ;
 int LIST_REMOVE (struct host*,int ) ;
 int NLM_PROG ;
 int NLM_SM ;
 int NLM_SM_NOTIFY ;
 int SM_MAXSTRLEN ;
 int SM_PROG ;
 int SM_UNMON ;
 int SM_VERS ;
 int bzero (struct mon_id*,int) ;
 int callrpc (char*,int ,int ,int ,int ,struct mon_id*,int ,struct sm_stat*) ;
 int debuglog (char*,...) ;
 int free (struct host*) ;
 int hostlst ;
 int hostlst_head ;
 scalar_t__ strncmp (char*,int ,int ) ;
 scalar_t__ xdr_mon_id ;
 scalar_t__ xdr_sm_stat ;

void
unmonitor_lock_host(char *hostname)
{
 struct host *ihp;
 struct mon_id smon_id;
 struct sm_stat smstat;
 int rpcret;

 rpcret = 0;

 for( ihp=LIST_FIRST(&hostlst_head); ihp != ((void*)0);
      ihp=LIST_NEXT(ihp, hostlst)) {
  if (strncmp(hostname, ihp->name, SM_MAXSTRLEN) == 0) {

   --ihp->refcnt;

   break;
  }
 }

 if (ihp == ((void*)0)) {
  debuglog("Could not find host %16s in mon list\n", hostname);
  return;
 }

 if (ihp->refcnt > 0)
  return;

 if (ihp->refcnt < 0) {
  debuglog("Negative refcount!: %d\n",
      ihp->refcnt);
 }

 debuglog("Attempting to unmonitor host %16s\n", hostname);

 bzero(&smon_id,sizeof(smon_id));

 smon_id.mon_name = hostname;
 smon_id.my_id.my_name = "localhost";
 smon_id.my_id.my_prog = NLM_PROG;
 smon_id.my_id.my_vers = NLM_SM;
 smon_id.my_id.my_proc = NLM_SM_NOTIFY;

 rpcret = callrpc("localhost", SM_PROG, SM_VERS, SM_UNMON,
     (xdrproc_t)xdr_mon_id, &smon_id,
     (xdrproc_t)xdr_sm_stat, &smstat);

 if (rpcret != 0) {
  debuglog("Rpc call to unmonitor statd failed with "
     " return value: %d\n", rpcret);
 }

 LIST_REMOVE(ihp, hostlst);
 free(ihp);
}
