
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int xdrproc_t ;
struct TYPE_3__ {int ypbind_binding_addr; } ;
struct TYPE_4__ {TYPE_1__ ypbind_bindinfo; } ;
struct ypbind_resp {scalar_t__ ypbind_status; TYPE_2__ ypbind_resp_u; } ;
struct timeval {int tv_sec; scalar_t__ tv_usec; } ;
struct sockaddr_in {int dummy; } ;
struct in_addr {int s_addr; } ;
struct hostent {char* h_name; } ;
typedef int ss_addr ;
typedef int CLIENT ;


 int AF_INET ;
 int RPC_ANYSOCK ;
 int RPC_SUCCESS ;
 int YPBINDPROC_DOMAIN ;
 int YPBINDPROG ;
 int YPBINDVERS ;
 scalar_t__ YPBIND_SUCC_VAL ;
 int YPERR_YPBIND ;
 int clnt_call (int *,int ,int ,char**,int ,struct ypbind_resp*,struct timeval) ;
 int clnt_destroy (int *) ;
 int * clntudp_create (struct sockaddr_in*,int ,int ,struct timeval,int*) ;
 struct hostent* gethostbyaddr (char*,int,int ) ;
 char* inet_ntoa (struct in_addr) ;
 int memmove (int *,int *,int) ;
 int printf (char*,char*) ;
 int warnx (char*,...) ;
 scalar_t__ xdr_domainname ;
 scalar_t__ xdr_ypbind_resp ;
 int yperr_string (int) ;

__attribute__((used)) static int
bind_host(char *dom, struct sockaddr_in *sin)
{
 struct hostent *hent = ((void*)0);
 struct ypbind_resp ypbr;
 struct in_addr ss_addr;
 struct timeval tv;
 CLIENT *client;
 int sock, r;

 sock = RPC_ANYSOCK;
 tv.tv_sec = 15;
 tv.tv_usec = 0;
 client = clntudp_create(sin, YPBINDPROG, YPBINDVERS, tv, &sock);

 if (client == ((void*)0)) {
  warnx("host is not bound to a ypmaster");
  return (YPERR_YPBIND);
 }

 tv.tv_sec = 5;
 tv.tv_usec = 0;

 r = clnt_call(client, YPBINDPROC_DOMAIN,
  (xdrproc_t)xdr_domainname, &dom,
  (xdrproc_t)xdr_ypbind_resp, &ypbr, tv);
 if (r != RPC_SUCCESS) {
  warnx("can't clnt_call: %s", yperr_string(YPERR_YPBIND));
  clnt_destroy(client);
  return (YPERR_YPBIND);
 } else {
  if (ypbr.ypbind_status != YPBIND_SUCC_VAL) {
   warnx("can't yp_bind: reason: %s",
       yperr_string(ypbr.ypbind_status));
   clnt_destroy(client);
   return (r);
  }
 }
 clnt_destroy(client);

 memmove(&ss_addr.s_addr, &ypbr.ypbind_resp_u.ypbind_bindinfo.ypbind_binding_addr,
     sizeof (ss_addr));

 hent = gethostbyaddr((char *)&ss_addr.s_addr, sizeof(ss_addr.s_addr),
     AF_INET);
 if (hent != ((void*)0))
  printf("%s\n", hent->h_name);
 else
  printf("%s\n", inet_ntoa(ss_addr));

 return (0);
}
