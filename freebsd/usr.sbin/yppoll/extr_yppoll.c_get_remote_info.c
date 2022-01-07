
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int xdrproc_t ;
typedef int u_int32_t ;
struct ypresp_order {int ordernum; int master; int status; } ;
struct ypresp_master {int ordernum; int master; int status; } ;
struct ypreq_nokey {char* domain; char* map; } ;
struct timeval {int tv_sec; scalar_t__ tv_usec; } ;
struct TYPE_2__ {int s_addr; } ;
struct sockaddr_in {int sin_len; TYPE_1__ sin_addr; int sin_family; } ;
struct hostent {scalar_t__ h_addr; } ;
typedef int CLIENT ;


 int AF_INET ;
 int RPC_ANYSOCK ;
 int RPC_SUCCESS ;
 int YPPROC_MASTER ;
 int YPPROC_ORDER ;
 int YPPROG ;
 int YPVERS ;
 int bzero (char*,int) ;
 int clnt_call (int *,int ,int ,struct ypreq_nokey*,int ,struct ypresp_order*,struct timeval) ;
 int clnt_destroy (int *) ;
 int clnt_perror (int *,char*) ;
 int * clntudp_create (struct sockaddr_in*,int ,int ,struct timeval,int*) ;
 int errx (int,char*,char*) ;
 struct hostent* gethostbyname (char*) ;
 scalar_t__ inet_aton (char*,TYPE_1__*) ;
 scalar_t__ strdup (int ) ;
 int xdr_free (int ,char*) ;
 scalar_t__ xdr_ypreq_nokey ;
 scalar_t__ xdr_ypresp_master ;
 scalar_t__ xdr_ypresp_order ;
 int ypprot_err (int ) ;

__attribute__((used)) static int
get_remote_info(char *indomain, char *inmap, char *server, int *outorder,
    char **outname)
{
 struct ypresp_order ypro;
 struct ypresp_master yprm;
 struct ypreq_nokey yprnk;
 struct timeval tv;
 struct sockaddr_in rsrv_sin;
 int rsrv_sock;
 CLIENT *client;
 struct hostent *h;
 int r;

 bzero((char *)&rsrv_sin, sizeof rsrv_sin);
 rsrv_sin.sin_len = sizeof rsrv_sin;
 rsrv_sin.sin_family = AF_INET;
 rsrv_sock = RPC_ANYSOCK;

 h = gethostbyname(server);
 if (h == ((void*)0)) {
  if (inet_aton(server, &rsrv_sin.sin_addr) == 0)
   errx(1, "unknown host %s.", server);
 } else
  rsrv_sin.sin_addr.s_addr = *(u_int32_t *)h->h_addr;

 tv.tv_sec = 10;
 tv.tv_usec = 0;

 client = clntudp_create(&rsrv_sin, YPPROG, YPVERS, tv, &rsrv_sock);
 if (client == ((void*)0))
  errx(1, "clntudp_create: no contact with host %s.", server);

 yprnk.domain = indomain;
 yprnk.map = inmap;

 bzero((char *)(char *)&ypro, sizeof ypro);

 r = clnt_call(client, YPPROC_ORDER, (xdrproc_t)xdr_ypreq_nokey, &yprnk,
     (xdrproc_t)xdr_ypresp_order, &ypro, tv);
 if (r != RPC_SUCCESS)
  clnt_perror(client, "yp_order: clnt_call");

 *outorder = ypro.ordernum;
 xdr_free((xdrproc_t)xdr_ypresp_order, (char *)&ypro);

 r = ypprot_err(ypro.status);
 if (r == RPC_SUCCESS) {
  bzero((char *)&yprm, sizeof yprm);

  r = clnt_call(client, YPPROC_MASTER, (xdrproc_t)xdr_ypreq_nokey,
      &yprnk, (xdrproc_t)xdr_ypresp_master, &yprm, tv);
  if (r != RPC_SUCCESS)
   clnt_perror(client, "yp_master: clnt_call");
  r = ypprot_err(yprm.status);
  if (r == 0)
   *outname = (char *)strdup(yprm.master);
  xdr_free((xdrproc_t)xdr_ypresp_master, (char *)&yprm);
 }
 clnt_destroy(client);
 return (r);
}
