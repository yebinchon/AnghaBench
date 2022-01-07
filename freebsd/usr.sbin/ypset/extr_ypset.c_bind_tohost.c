
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int xdrproc_t ;
struct TYPE_6__ {int ypbind_binding_port; int ypbind_binding_addr; } ;
struct ypbind_setdom {char* ypsetdom_domain; int ypsetdom_vers; TYPE_1__ ypsetdom_binding; } ;
struct timeval {int tv_sec; scalar_t__ tv_usec; } ;
struct sockaddr_in {int dummy; } ;
struct in_addr {int s_addr; } ;
struct hostent {int h_addr; } ;
struct TYPE_7__ {int cl_auth; } ;
typedef TYPE_2__ CLIENT ;


 int IPPROTO_UDP ;
 int RPC_ANYSOCK ;
 int YPBINDPROC_SETDOM ;
 int YPBINDPROG ;
 int YPBINDVERS ;
 int YPERR_YPBIND ;
 int YPPROC_NULL ;
 int YPPROG ;
 int YPVERS ;
 int authunix_create_default () ;
 int bcopy (int*,int *,int) ;
 int clnt_call (TYPE_2__*,int ,int ,struct ypbind_setdom*,int ,int *,struct timeval) ;
 int clnt_destroy (TYPE_2__*) ;
 int clnt_sperrno (int) ;
 TYPE_2__* clntudp_create (struct sockaddr_in*,int ,int ,struct timeval,int*) ;
 int errx (int,char*,char*) ;
 struct hostent* gethostbyname (char*) ;
 int getrpcport (char*,int ,int ,int ) ;
 int htons (int) ;
 scalar_t__ inet_aton (char*,struct in_addr*) ;
 int memmove (int*,int ,int) ;
 int memset (struct ypbind_setdom*,int ,int) ;
 int warnx (char*,char*,...) ;
 scalar_t__ xdr_void ;
 scalar_t__ xdr_ypbind_setdom ;
 int yperr_string (int) ;

__attribute__((used)) static int
bind_tohost(struct sockaddr_in *sin, char *dom, char *server)
{
 struct ypbind_setdom ypsd;
 struct in_addr iaddr;
 struct hostent *hp;
 struct timeval tv;
 CLIENT *client;
 int sock, port, r;

 port = getrpcport(server, YPPROG, YPPROC_NULL, IPPROTO_UDP);
 if (port == 0)
  errx(1, "%s not running ypserv", server);
 port = htons(port);

 memset(&ypsd, 0, sizeof ypsd);

 if (inet_aton(server, &iaddr) == 0) {
  hp = gethostbyname(server);
  if (hp == ((void*)0))
   errx(1, "can't find address for %s", server);
  memmove(&iaddr.s_addr, hp->h_addr, sizeof(iaddr.s_addr));
 }
 ypsd.ypsetdom_domain = dom;
 bcopy(&iaddr.s_addr, &ypsd.ypsetdom_binding.ypbind_binding_addr,
     sizeof(ypsd.ypsetdom_binding.ypbind_binding_addr));
 bcopy(&port, &ypsd.ypsetdom_binding.ypbind_binding_port,
     sizeof(ypsd.ypsetdom_binding.ypbind_binding_port));
 ypsd.ypsetdom_vers = YPVERS;

 tv.tv_sec = 15;
 tv.tv_usec = 0;
 sock = RPC_ANYSOCK;
 client = clntudp_create(sin, YPBINDPROG, YPBINDVERS, tv, &sock);
 if (client == ((void*)0)) {
  warnx("can't yp_bind, reason: %s", yperr_string(YPERR_YPBIND));
  return (YPERR_YPBIND);
 }
 client->cl_auth = authunix_create_default();

 r = clnt_call(client, YPBINDPROC_SETDOM,
  (xdrproc_t)xdr_ypbind_setdom, &ypsd,
  (xdrproc_t)xdr_void, ((void*)0), tv);
 if (r) {
  warnx("cannot ypset for domain %s on host %s: %s"
                " - make sure ypbind was started with -ypset or -ypsetme", dom,
      server, clnt_sperrno(r));
  clnt_destroy(client);
  return (YPERR_YPBIND);
 }
 clnt_destroy(client);
 return (0);
}
