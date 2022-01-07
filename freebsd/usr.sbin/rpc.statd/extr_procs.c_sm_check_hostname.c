
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct svc_req {int rq_xprt; } ;
struct sockaddr {int dummy; } ;
struct TYPE_2__ {scalar_t__ buf; } ;


 int LOG_ERR ;
 int VIS_WHITE ;
 int free (char*) ;
 int from_addr (struct sockaddr*) ;
 char* malloc (int) ;
 int strlen (char*) ;
 int strvis (char*,char*,int ) ;
 TYPE_1__* svc_getrpccaller (int ) ;
 int syslog (int ,char*,int ,char*) ;

int sm_check_hostname(struct svc_req *req, char *arg)
{
  int len, dstlen, ret;
  struct sockaddr *claddr;
  char *dst;

  len = strlen(arg);
  dstlen = (4 * len) + 1;
  dst = malloc(dstlen);
  claddr = (struct sockaddr *) (svc_getrpccaller(req->rq_xprt)->buf) ;
  ret = 1;

  if (claddr == ((void*)0) || dst == ((void*)0))
  {
    ret = 0;
  }
  else if (strvis(dst, arg, VIS_WHITE) != len)
  {
    syslog(LOG_ERR,
 "sm_stat: client %s hostname %s contained invalid characters.",
 from_addr(claddr),
 dst);
    ret = 0;
  }
  free(dst);
  return (ret);
}
