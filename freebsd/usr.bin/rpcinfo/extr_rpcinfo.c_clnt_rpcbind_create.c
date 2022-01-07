
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct netconfig {int dummy; } ;
struct netbuf {int dummy; } ;
struct TYPE_2__ {scalar_t__ cf_stat; } ;
typedef int CLIENT ;


 scalar_t__ RPC_SUCCESS ;
 scalar_t__ RPC_UNKNOWNPROTO ;
 int __rpc_endconf (void*) ;
 struct netconfig* __rpc_getconf (void*) ;
 void* __rpc_setconf (char const*) ;
 int * getclnthandle (char*,struct netconfig*,int,struct netbuf**) ;
 TYPE_1__ rpc_createerr ;

__attribute__((used)) static CLIENT *
clnt_rpcbind_create(char *host, int rpcbversnum, struct netbuf **targaddr)
{
 static const char *tlist[3] = {
  "circuit_n", "circuit_v", "datagram_v"
 };
 int i;
 struct netconfig *nconf;
 CLIENT *clnt = ((void*)0);
 void *handle;

 rpc_createerr.cf_stat = RPC_SUCCESS;
 for (i = 0; i < 3; i++) {
  if ((handle = __rpc_setconf(tlist[i])) == ((void*)0))
   continue;
  while (clnt == (CLIENT *)((void*)0)) {
   if ((nconf = __rpc_getconf(handle)) == ((void*)0)) {
    if (rpc_createerr.cf_stat == RPC_SUCCESS)
        rpc_createerr.cf_stat = RPC_UNKNOWNPROTO;
    break;
   }
   clnt = getclnthandle(host, nconf, rpcbversnum,
     targaddr);
  }
  if (clnt)
   break;
  __rpc_endconf(handle);
 }
 return (clnt);
}
