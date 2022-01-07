
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int xdrproc_t ;
struct timeval {int tv_sec; scalar_t__ tv_usec; } ;
typedef enum clnt_stat { ____Placeholder_clnt_stat } clnt_stat ;
struct TYPE_7__ {scalar_t__ cf_stat; } ;
struct TYPE_6__ {int cl_auth; } ;
typedef TYPE_1__ CLIENT ;


 int CLNT_CONTROL (TYPE_1__*,int ,char*) ;
 int CLSET_RETRY_TIMEOUT ;
 int authunix_create_default () ;
 int clnt_call (TYPE_1__*,int,int ,char*,int ,char*,struct timeval) ;
 TYPE_1__* clnt_create (char*,int,int,char*) ;
 TYPE_2__ rpc_createerr ;

__attribute__((used)) static enum clnt_stat
callaurpc(char *host, int prognum, int versnum, int procnum,
    xdrproc_t inproc, char *in, xdrproc_t outproc, char *out)
{
 enum clnt_stat clnt_stat;
 struct timeval timeout, tottimeout;

 CLIENT *client = ((void*)0);

  client = clnt_create(host, prognum, versnum, "udp");
 if (client == ((void*)0))
  return ((int)rpc_createerr.cf_stat);
 timeout.tv_usec = 0;
 timeout.tv_sec = 6;
 CLNT_CONTROL(client, CLSET_RETRY_TIMEOUT, (char *)(void *)&timeout);

 client->cl_auth = authunix_create_default();
 tottimeout.tv_sec = 25;
 tottimeout.tv_usec = 0;
 clnt_stat = clnt_call(client, procnum, inproc, in,
     outproc, out, tottimeout);
 return (clnt_stat);
}
