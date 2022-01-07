
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int xdrproc_t ;
struct TYPE_11__ {int state; } ;
typedef TYPE_3__ sm_stat ;
struct TYPE_12__ {char* my_name; } ;
typedef TYPE_4__ my_id ;
typedef int id ;
typedef enum clnt_stat { ____Placeholder_clnt_stat } clnt_stat ;
struct TYPE_9__ {int my_proc; int my_vers; int my_prog; int my_name; } ;
struct TYPE_10__ {TYPE_1__ my_id; } ;
struct TYPE_13__ {TYPE_2__ mon_id; } ;


 int LOG_ERR ;
 int LOG_WARNING ;
 int NLM_PROG ;
 int NLM_SM ;
 int NLM_SM_NOTIFY ;
 int RPC_PROGUNAVAIL ;
 int SM_PROG ;
 int SM_UNMON_ALL ;
 int SM_VERS ;
 int callrpc (char*,int ,int ,int ,int ,TYPE_4__*,int ,TYPE_3__*) ;
 int clnt_sperrno (int) ;
 int exit (int) ;
 int localhost ;
 int memset (TYPE_4__*,int ,int) ;
 TYPE_5__ mon_host ;
 int nsm_state ;
 int sleep (int) ;
 int syslog (int ,char*,int ,int ) ;
 scalar_t__ xdr_my_id ;
 scalar_t__ xdr_sm_stat ;

void
init_nsm(void)
{
 enum clnt_stat ret;
 my_id id;
 sm_stat stat;
 char name[] = "NFS NLM";






 memset(&id, 0, sizeof(id));
 id.my_name = name;





 do {
  ret = callrpc("localhost", SM_PROG, SM_VERS, SM_UNMON_ALL,
      (xdrproc_t)xdr_my_id, &id, (xdrproc_t)xdr_sm_stat, &stat);
  if (ret == RPC_PROGUNAVAIL) {
   syslog(LOG_WARNING, "%lu %s", SM_PROG,
       clnt_sperrno(ret));
   sleep(2);
   continue;
  }
  break;
 } while (0);

 if (ret != 0) {
  syslog(LOG_ERR, "%lu %s", SM_PROG, clnt_sperrno(ret));
  exit(1);
 }

 nsm_state = stat.state;


 mon_host.mon_id.my_id.my_name = localhost;
 mon_host.mon_id.my_id.my_prog = NLM_PROG;
 mon_host.mon_id.my_id.my_vers = NLM_SM;
 mon_host.mon_id.my_id.my_proc = NLM_SM_NOTIFY;
}
