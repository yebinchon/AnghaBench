
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct t_bind {int dummy; } ;
struct rmtcallfd_list {int fd; struct rmtcallfd_list* next; int netid; TYPE_1__* xprt; } ;
struct netconfig {char* nc_device; int nc_netid; } ;
struct TYPE_3__ {int xp_netid; } ;
typedef TYPE_1__ SVCXPRT ;


 int FD_SET (int,int *) ;
 int LOG_ERR ;
 int __rpc_nconf2fd (struct netconfig*) ;
 scalar_t__ debugging ;
 int errno ;
 int fprintf (int ,char*,...) ;
 struct rmtcallfd_list* malloc (int) ;
 struct rmtcallfd_list* rmthead ;
 struct rmtcallfd_list* rmttail ;
 int stderr ;
 int strdup (int ) ;
 int svc_fdset ;
 int svc_maxfd ;
 TYPE_1__* svc_tli_create (int,int ,struct t_bind*,int ,int ) ;
 int syslog (int ,char*) ;

int
create_rmtcall_fd(struct netconfig *nconf)
{
 int fd;
 struct rmtcallfd_list *rmt;
 SVCXPRT *xprt;

 if ((fd = __rpc_nconf2fd(nconf)) == -1) {
  if (debugging)
   fprintf(stderr,
 "create_rmtcall_fd: couldn't open \"%s\" (errno %d)\n",
   nconf->nc_device, errno);
  return (-1);
 }
 xprt = svc_tli_create(fd, 0, (struct t_bind *) 0, 0, 0);
 if (xprt == ((void*)0)) {
  if (debugging)
   fprintf(stderr,
    "create_rmtcall_fd: svc_tli_create failed\n");
  return (-1);
 }
 rmt = malloc(sizeof (struct rmtcallfd_list));
 if (rmt == ((void*)0)) {
  syslog(LOG_ERR, "create_rmtcall_fd: no memory!");
  return (-1);
 }
 rmt->xprt = xprt;
 rmt->netid = strdup(nconf->nc_netid);
 xprt->xp_netid = rmt->netid;
 rmt->fd = fd;
 rmt->next = ((void*)0);
 if (rmthead == ((void*)0)) {
  rmthead = rmt;
  rmttail = rmt;
 } else {
  rmttail->next = rmt;
  rmttail = rmt;
 }

 if (fd > svc_maxfd)
  svc_maxfd = fd;
 FD_SET(fd, &svc_fdset);
 return (fd);
}
