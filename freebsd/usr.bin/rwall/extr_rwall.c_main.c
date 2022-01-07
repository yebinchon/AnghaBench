
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xdrproc_t ;
struct timeval {int tv_sec; scalar_t__ tv_usec; } ;
typedef int CLIENT ;


 scalar_t__ RPC_SUCCESS ;
 int WALLPROC_WALL ;
 int WALLPROG ;
 int WALLVERS ;
 scalar_t__ clnt_call (int *,int ,int ,int *,int ,char*,struct timeval) ;
 int * clnt_create (char*,int ,int ,char*) ;
 int clnt_spcreateerror (char*) ;
 int clnt_sperror (int *,char*) ;
 int errx (int,char*,int ) ;
 int makemsg (char*) ;
 int mbuf ;
 int usage () ;
 scalar_t__ xdr_void ;
 scalar_t__ xdr_wrapstring ;

int
main(int argc, char *argv[])
{
 char *wallhost, res;
 CLIENT *cl;
 struct timeval tv;

 if ((argc < 2) || (argc > 3))
  usage();

 wallhost = argv[1];

 makemsg(argv[2]);






 cl = clnt_create(wallhost, WALLPROG, WALLVERS, "udp");
 if (cl == ((void*)0)) {




  errx(1, "%s", clnt_spcreateerror(wallhost));
 }

 tv.tv_sec = 15;
 tv.tv_usec = 0;
 if (clnt_call(cl, WALLPROC_WALL, (xdrproc_t)xdr_wrapstring, &mbuf,
     (xdrproc_t)xdr_void, &res, tv) != RPC_SUCCESS) {




  errx(1, "%s", clnt_sperror(cl, wallhost));
 }

 return (0);
}
