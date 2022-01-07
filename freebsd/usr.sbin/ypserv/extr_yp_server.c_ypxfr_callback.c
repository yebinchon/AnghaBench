
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int ypxfrstat ;
struct TYPE_3__ {unsigned int transid; int status; } ;
typedef TYPE_1__ yppushresp_xfr ;
struct timeval {int tv_sec; scalar_t__ tv_usec; } ;
struct sockaddr_in {int sin_addr; int sin_port; } ;
struct rpc_err {scalar_t__ re_status; } ;
typedef int CLIENT ;


 int CLSET_TIMEOUT ;
 scalar_t__ FALSE ;
 int RPC_ANYSOCK ;
 scalar_t__ RPC_SUCCESS ;
 scalar_t__ RPC_TIMEDOUT ;
 scalar_t__ clnt_control (int *,int ,struct timeval*) ;
 int clnt_destroy (int *) ;
 int clnt_geterr (int *,struct rpc_err*) ;
 int clnt_spcreateerror (char*) ;
 int clnt_sperror (int *,char*) ;
 int * clntudp_create (struct sockaddr_in*,unsigned int,int,struct timeval,int*) ;
 int htons (unsigned long) ;
 int inet_ntoa (int ) ;
 int yp_error (char*,...) ;
 int * yppushproc_xfrresp_1 (TYPE_1__*,int *) ;

__attribute__((used)) static void
ypxfr_callback(ypxfrstat rval, struct sockaddr_in *addr, unsigned int transid,
    unsigned int prognum, unsigned long port)
{
 CLIENT *clnt;
 int sock = RPC_ANYSOCK;
 struct timeval timeout;
 yppushresp_xfr ypxfr_resp;
 struct rpc_err err;

 timeout.tv_sec = 5;
 timeout.tv_usec = 0;
 addr->sin_port = htons(port);

 if ((clnt = clntudp_create(addr,prognum,1,timeout,&sock)) == ((void*)0)) {
  yp_error("%s: %s", inet_ntoa(addr->sin_addr),
    clnt_spcreateerror("failed to establish callback handle"));
  return;
 }

 ypxfr_resp.status = rval;
 ypxfr_resp.transid = transid;


 timeout.tv_sec = 0;
 if (clnt_control(clnt, CLSET_TIMEOUT, &timeout) == FALSE)
  yp_error("failed to set timeout on ypproc_xfr callback");

 if (yppushproc_xfrresp_1(&ypxfr_resp, clnt) == ((void*)0)) {
  clnt_geterr(clnt, &err);
  if (err.re_status != RPC_SUCCESS &&
      err.re_status != RPC_TIMEDOUT)
   yp_error("%s", clnt_sperror(clnt,
    "ypxfr callback failed"));
 }

 clnt_destroy(clnt);
 return;
}
