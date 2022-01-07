
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int xdrproc_t ;
typedef int utmpidlearr ;
typedef int up ;
struct timeval {int tv_sec; scalar_t__ tv_usec; } ;
struct TYPE_2__ {int s_addr; } ;
struct sockaddr_in {TYPE_1__ sin_addr; } ;
struct hostent {int h_addr; } ;
typedef int CLIENT ;


 scalar_t__ RPC_SUCCESS ;
 int RUSERSPROC_NAMES ;
 int RUSERSPROG ;
 int RUSERSVERS_IDLE ;
 scalar_t__ clnt_call (int *,int ,int ,int *,int ,int *,struct timeval) ;
 int * clnt_create (char*,int ,int ,char*) ;
 int clnt_destroy (int *) ;
 char* clnt_spcreateerror (char*) ;
 char* clnt_sperror (int *,char*) ;
 int errx (int,char*,char*) ;
 struct hostent* gethostbyname (char*) ;
 int memcpy (int *,int ,int) ;
 int memset (int *,int ,int) ;
 int rusers_reply (int *,struct sockaddr_in*) ;
 scalar_t__ xdr_utmpidlearr ;
 scalar_t__ xdr_void ;

__attribute__((used)) static void
onehost(char *host)
{
 utmpidlearr up;
 CLIENT *rusers_clnt;
 struct sockaddr_in addr;
 struct hostent *hp;
 struct timeval tv;

 hp = gethostbyname(host);
 if (hp == ((void*)0))
  errx(1, "unknown host \"%s\"", host);

 rusers_clnt = clnt_create(host, RUSERSPROG, RUSERSVERS_IDLE, "udp");
 if (rusers_clnt == ((void*)0))
  errx(1, "%s", clnt_spcreateerror(""));

 memset(&up, 0, sizeof(up));
 tv.tv_sec = 15;
 tv.tv_usec = 0;
 if (clnt_call(rusers_clnt, RUSERSPROC_NAMES, (xdrproc_t)xdr_void, ((void*)0),
     (xdrproc_t)xdr_utmpidlearr, &up, tv) != RPC_SUCCESS)
  errx(1, "%s", clnt_sperror(rusers_clnt, ""));
 memcpy(&addr.sin_addr.s_addr, hp->h_addr, sizeof(addr.sin_addr.s_addr));
 rusers_reply(&up, &addr);
 clnt_destroy(rusers_clnt);
}
