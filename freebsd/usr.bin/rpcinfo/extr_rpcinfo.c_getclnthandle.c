
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_long ;
struct netconfig {int dummy; } ;
struct netbuf {int len; int maxlen; char* buf; } ;
struct addrinfo {int ai_addrlen; char* ai_addr; } ;
struct TYPE_3__ {int re_status; } ;
struct TYPE_4__ {scalar_t__ cf_stat; TYPE_1__ cf_error; } ;
typedef int CLIENT ;


 int RPCBPROG ;
 int RPC_ANYFD ;
 int RPC_FAILED ;
 scalar_t__ RPC_N2AXLATEFAILURE ;
 scalar_t__ RPC_RPCBFAILURE ;
 scalar_t__ RPC_TLIERROR ;
 int * clnt_tli_create (int ,struct netconfig*,struct netbuf*,int ,int ,int ,int ) ;
 int freeaddrinfo (struct addrinfo*) ;
 scalar_t__ getaddrinfo (char*,char*,struct addrinfo*,struct addrinfo**) ;
 scalar_t__ malloc (int) ;
 int memcpy (char*,char*,int) ;
 int memset (struct addrinfo*,int ,int) ;
 TYPE_2__ rpc_createerr ;

__attribute__((used)) static CLIENT*
getclnthandle(char *host, struct netconfig *nconf,
    u_long rpcbversnum, struct netbuf **targaddr)
{
 struct netbuf addr;
 struct addrinfo hints, *res;
 CLIENT *client = ((void*)0);


 memset(&hints, 0, sizeof hints);
 if (getaddrinfo(host, "rpcbind", &hints, &res) != 0) {
  rpc_createerr.cf_stat = RPC_N2AXLATEFAILURE;
  return (((void*)0));
 }
 addr.len = addr.maxlen = res->ai_addrlen;
 addr.buf = res->ai_addr;
 client = clnt_tli_create(RPC_ANYFD, nconf, &addr, RPCBPROG,
   rpcbversnum, 0, 0);
 if (client) {
  if (targaddr != ((void*)0)) {
   *targaddr =
       (struct netbuf *)malloc(sizeof (struct netbuf));
   if (*targaddr != ((void*)0)) {
    (*targaddr)->maxlen = addr.maxlen;
    (*targaddr)->len = addr.len;
    (*targaddr)->buf = (char *)malloc(addr.len);
    if ((*targaddr)->buf != ((void*)0)) {
     memcpy((*targaddr)->buf, addr.buf,
      addr.len);
    }
   }
  }
 } else {
  if (rpc_createerr.cf_stat == RPC_TLIERROR) {




   rpc_createerr.cf_stat = RPC_RPCBFAILURE;
   rpc_createerr.cf_error.re_status = RPC_FAILED;
  }
 }
 freeaddrinfo(res);
 return (client);
}
