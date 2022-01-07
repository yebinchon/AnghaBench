
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct svc_req {int rq_xprt; } ;
struct sockaddr {int dummy; } ;
struct sm_stat_res {int state; void* res_stat; } ;
struct addrinfo {int dummy; } ;
typedef struct sm_stat_res sm_stat_res ;
struct TYPE_5__ {int mon_name; } ;
typedef TYPE_1__ sm_name ;
struct TYPE_7__ {int ourState; } ;
struct TYPE_6__ {scalar_t__ buf; } ;


 int LOG_DEBUG ;
 int LOG_ERR ;
 scalar_t__ debug ;
 int freeaddrinfo (struct addrinfo*) ;
 int from_addr (struct sockaddr*) ;
 scalar_t__ getaddrinfo (int ,int *,int *,struct addrinfo**) ;
 int sm_check_hostname (struct svc_req*,int ) ;
 void* stat_fail ;
 void* stat_succ ;
 TYPE_3__* status_info ;
 TYPE_2__* svc_getrpccaller (int ) ;
 int syslog (int ,char*,int ,...) ;

struct sm_stat_res *sm_stat_1_svc(sm_name *arg, struct svc_req *req)
{
  static sm_stat_res res;
  struct addrinfo *ai;
  struct sockaddr *claddr;
  static int err;

  err = 1;
  if ((err = sm_check_hostname(req, arg->mon_name)) == 0)
  {
    res.res_stat = stat_fail;
  }
  if (err != 0)
  {
    if (debug)
     syslog(LOG_DEBUG, "stat called for host %s", arg->mon_name);
    if (getaddrinfo(arg->mon_name, ((void*)0), ((void*)0), &ai) == 0) {
     res.res_stat = stat_succ;
     freeaddrinfo(ai);
    }
    else
    {
      claddr = (struct sockaddr *) (svc_getrpccaller(req->rq_xprt)->buf) ;
      syslog(LOG_ERR, "invalid hostname to sm_stat from %s: %s",
   from_addr(claddr), arg->mon_name);
      res.res_stat = stat_fail;
    }
  }
  res.state = status_info->ourState;
  return (&res);
}
