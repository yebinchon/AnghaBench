
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct svc_req {int dummy; } ;
struct sm_stat_res {void* res_stat; int state; } ;
struct addrinfo {int dummy; } ;
typedef struct sm_stat_res sm_stat_res ;
struct TYPE_9__ {int my_proc; int my_vers; int my_prog; int my_name; } ;
struct TYPE_10__ {TYPE_1__ my_id; int mon_name; } ;
struct TYPE_11__ {int priv; TYPE_2__ mon_id; } ;
typedef TYPE_3__ mon ;
struct TYPE_14__ {int ourState; } ;
struct TYPE_13__ {TYPE_4__* monList; } ;
struct TYPE_12__ {struct TYPE_12__* next; int notifyData; int notifyProc; int notifyVers; int notifyProg; int notifyHost; } ;
typedef TYPE_4__ MonList ;
typedef TYPE_5__ HostInfo ;


 int LOG_DEBUG ;
 int LOG_ERR ;
 int SM_MAXSTRLEN ;
 int TRUE ;
 scalar_t__ debug ;
 TYPE_5__* find_host (int ,int ) ;
 int freeaddrinfo (struct addrinfo*) ;
 scalar_t__ getaddrinfo (int ,int *,int *,struct addrinfo**) ;
 scalar_t__ malloc (int) ;
 int memcpy (int ,int ,int) ;
 int sm_check_hostname (struct svc_req*,int ) ;
 void* stat_fail ;
 void* stat_succ ;
 TYPE_6__* status_info ;
 int strncpy (int ,int ,int ) ;
 int sync_file () ;
 int syslog (int ,char*,...) ;

struct sm_stat_res *sm_mon_1_svc(mon *arg, struct svc_req *req)
{
  static sm_stat_res res;
  HostInfo *hp;
  static int err;
  MonList *lp;
  struct addrinfo *ai;

  if ((err = sm_check_hostname(req, arg->mon_id.mon_name)) == 0)
  {
    res.res_stat = stat_fail;
  }

  if (err != 0)
  {
    if (debug)
    {
      syslog(LOG_DEBUG, "monitor request for host %s", arg->mon_id.mon_name);
      syslog(LOG_DEBUG, "recall host: %s prog: %d ver: %d proc: %d",
      arg->mon_id.my_id.my_name,
      arg->mon_id.my_id.my_prog,
      arg->mon_id.my_id.my_vers,
      arg->mon_id.my_id.my_proc);
    }
    res.res_stat = stat_fail;
    res.state = status_info->ourState;



    if (getaddrinfo(arg->mon_id.mon_name, ((void*)0), ((void*)0), &ai) != 0)
    {
      syslog(LOG_ERR, "Invalid hostname to sm_mon: %s", arg->mon_id.mon_name);
      return (&res);
    }
    freeaddrinfo(ai);
    if ((hp = find_host(arg->mon_id.mon_name, TRUE)))
    {
      lp = (MonList *)malloc(sizeof(MonList));
      if (!lp)
      {
        syslog(LOG_ERR, "Out of memory");
      }
      else
      {
        strncpy(lp->notifyHost, arg->mon_id.my_id.my_name, SM_MAXSTRLEN);
        lp->notifyProg = arg->mon_id.my_id.my_prog;
        lp->notifyVers = arg->mon_id.my_id.my_vers;
        lp->notifyProc = arg->mon_id.my_id.my_proc;
        memcpy(lp->notifyData, arg->priv, sizeof(lp->notifyData));

        lp->next = hp->monList;
        hp->monList = lp;
        sync_file();

        res.res_stat = stat_succ;
      }
    }
  }
  return (&res);
}
