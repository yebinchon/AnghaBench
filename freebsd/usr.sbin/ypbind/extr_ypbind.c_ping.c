
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xdrproc_t ;
struct timeval {scalar_t__ tv_usec; void* tv_sec; } ;
struct _dom_binding {int dom_vers; char* dom_domain; scalar_t__ dom_alive; int dom_server_addr; scalar_t__ dom_broadcast_pid; } ;
typedef enum clnt_stat { ____Placeholder_clnt_stat } clnt_stat ;
typedef scalar_t__ bool_t ;
typedef int CLIENT ;


 void* FAIL_THRESHOLD ;
 scalar_t__ FALSE ;
 int RPCSMALLMSGSIZE ;
 int RPC_ANYSOCK ;
 int RPC_SUCCESS ;
 int YPPROC_DOMAIN ;
 int YPPROG ;
 int YPVERS ;
 int broadcast (struct _dom_binding*) ;
 int clnt_call (int *,int ,int ,char**,int ,scalar_t__*,struct timeval) ;
 int clnt_destroy (int *) ;
 int * clntudp_bufcreate (int *,int ,int ,struct timeval,int*,int ,int ) ;
 scalar_t__ xdr_bool ;
 scalar_t__ xdr_domainname ;

int
ping(struct _dom_binding *ypdb)
{
 bool_t out;
 struct timeval interval, timeout;
 enum clnt_stat stat;
 int rpcsock = RPC_ANYSOCK;
 CLIENT *client_handle;

 interval.tv_sec = FAIL_THRESHOLD;
 interval.tv_usec = 0;
 timeout.tv_sec = FAIL_THRESHOLD;
 timeout.tv_usec = 0;

 if (ypdb->dom_broadcast_pid)
  return(1);

 if ((client_handle = clntudp_bufcreate(&ypdb->dom_server_addr,
  YPPROG, YPVERS, interval, &rpcsock, RPCSMALLMSGSIZE,
  RPCSMALLMSGSIZE)) == (CLIENT *)((void*)0)) {

  ypdb->dom_alive = 0;
  ypdb->dom_vers = -1;
  broadcast(ypdb);
  return(1);
 }

 {
  char *ptr;

  ptr = ypdb->dom_domain;

  stat = clnt_call(client_handle, YPPROC_DOMAIN,
      (xdrproc_t)xdr_domainname, &ptr,
      (xdrproc_t)xdr_bool, &out, timeout);
  if (stat != RPC_SUCCESS || out == FALSE) {
   ypdb->dom_alive = 0;
   ypdb->dom_vers = -1;
   clnt_destroy(client_handle);
   broadcast(ypdb);
   return(1);
  }
 }

 clnt_destroy(client_handle);
 return(0);
}
