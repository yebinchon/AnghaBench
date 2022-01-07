
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct jobs {unsigned long tid; unsigned long prognum; scalar_t__ stat; struct jobs* next; scalar_t__ polled; void* map; void* server; int port; } ;
struct TYPE_4__ {int xp_port; } ;
typedef TYPE_1__ SVCXPRT ;


 int IPPROTO_UDP ;
 int RPC_ANYSOCK ;
 scalar_t__ TRUE ;
 scalar_t__ YPPUSH_YPSERV ;
 scalar_t__ malloc (int) ;
 void* strdup (char*) ;
 scalar_t__ svc_register (TYPE_1__*,unsigned long,int,int ,int ) ;
 TYPE_1__* svcudp_create (int) ;
 int verbose ;
 int yp_error (char*,...) ;
 int yppush_exit (int) ;
 struct jobs* yppush_joblist ;
 int yppush_mapname ;
 scalar_t__ yppush_send_xfr (struct jobs*) ;
 int yppush_show_status (scalar_t__,unsigned long) ;
 int yppush_xfrrespprog_1 ;

__attribute__((used)) static int
yp_push(char *server, char *map, unsigned long tid)
{
 unsigned long prognum;
 int sock = RPC_ANYSOCK;
 SVCXPRT *xprt;
 struct jobs *job;




 if ((job = (struct jobs *)malloc(sizeof (struct jobs))) == ((void*)0)) {
  yp_error("malloc failed");
  yppush_exit (1);
 }





 xprt = svcudp_create(sock);
 for (prognum = 0x40000000; prognum < 0x5FFFFFFF; prognum++) {
  if (svc_register(xprt, prognum, 1,
      yppush_xfrrespprog_1, IPPROTO_UDP) == TRUE)
   break;
 }
 if (prognum == 0x5FFFFFFF) {
  yp_error ("can't register yppush_xfrrespprog_1");
  yppush_exit (1);
 }


 job->stat = 0;
 job->tid = tid;
 job->port = xprt->xp_port;
 job->server = strdup(server);
 job->map = strdup(map);
 job->prognum = prognum;
 job->polled = 0;
 job->next = yppush_joblist;
 yppush_joblist = job;

 if (verbose) {
  yp_error("initiating transfer: %s -> %s (transid = %lu)",
   yppush_mapname, server, tid);
 }






 if (yppush_send_xfr(job)){

  yppush_show_status(job->stat ? job->stat :
   YPPUSH_YPSERV,job->tid);
 } else {
  if (verbose > 1)
   yp_error("%s has been called", server);
 }

 return(0);
}
