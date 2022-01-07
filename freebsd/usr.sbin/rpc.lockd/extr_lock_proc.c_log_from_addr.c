
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct svc_req {int rq_xprt; } ;
struct sockaddr {int sa_len; } ;
struct TYPE_2__ {struct sockaddr* buf; } ;


 int LOG_DEBUG ;
 int NI_MAXHOST ;
 scalar_t__ getnameinfo (struct sockaddr*,int ,char*,int,int *,int ,int ) ;
 TYPE_1__* svc_getrpccaller (int ) ;
 int syslog (int ,char*,char const*,char*) ;

__attribute__((used)) static void
log_from_addr(const char *fun_name, struct svc_req *req)
{
 struct sockaddr *addr;
 char hostname_buf[NI_MAXHOST];

 addr = svc_getrpccaller(req->rq_xprt)->buf;
 if (getnameinfo(addr , addr->sa_len, hostname_buf, sizeof hostname_buf,
     ((void*)0), 0, 0) != 0)
  return;

 syslog(LOG_DEBUG, "%s from %s", fun_name, hostname_buf);
}
