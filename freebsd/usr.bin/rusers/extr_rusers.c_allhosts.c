
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xdrproc_t ;
typedef int utmpidlearr ;
typedef int up ;
typedef int resultproc_t ;
typedef enum clnt_stat { ____Placeholder_clnt_stat } clnt_stat ;


 int RPC_SUCCESS ;
 int RPC_TIMEDOUT ;
 int RUSERSPROC_NAMES ;
 int RUSERSPROG ;
 int RUSERSVERS_IDLE ;
 int clnt_broadcast (int ,int ,int ,int ,int *,int ,char*,int ) ;
 int clnt_sperrno (int) ;
 int errx (int,char*,int ) ;
 int memset (int *,int ,int) ;
 scalar_t__ rusers_reply ;
 scalar_t__ xdr_utmpidlearr ;
 scalar_t__ xdr_void ;

__attribute__((used)) static void
allhosts(void)
{
 utmpidlearr up;
 enum clnt_stat clnt_stat;

 memset(&up, 0, sizeof(up));
 clnt_stat = clnt_broadcast(RUSERSPROG, RUSERSVERS_IDLE,
     RUSERSPROC_NAMES, (xdrproc_t)xdr_void, ((void*)0),
     (xdrproc_t)xdr_utmpidlearr, (char *)&up,
     (resultproc_t)rusers_reply);
 if (clnt_stat != RPC_SUCCESS && clnt_stat != RPC_TIMEDOUT)
  errx(1, "%s", clnt_sperrno(clnt_stat));
}
