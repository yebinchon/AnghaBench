
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int xdrproc_t ;
struct timeval {int tv_sec; scalar_t__ tv_usec; } ;
struct TYPE_2__ {scalar_t__ cf_stat; } ;
typedef int CLIENT ;


 scalar_t__ clnt_call (int *,int,int ,char*,int ,char*,struct timeval) ;
 int * clnt_create (char const*,int,int,char*) ;
 int clnt_destroy (int *) ;
 TYPE_1__ rpc_createerr ;

int
tcp_callrpc(const char *host, int prognum, int versnum, int procnum,
    xdrproc_t inproc, char *in, xdrproc_t outproc, char *out)
{
 CLIENT *client;
 struct timeval timeout;
 int rval;

 if ((client = clnt_create(host, prognum, versnum, "tcp")) == ((void*)0) &&
     (client = clnt_create(host, prognum, versnum, "udp")) == ((void*)0))
  return ((int) rpc_createerr.cf_stat);

 timeout.tv_sec = 25;
 timeout.tv_usec = 0;
 rval = (int) clnt_call(client, procnum,
          inproc, in,
          outproc, out,
          timeout);
 clnt_destroy(client);
  return rval;
}
