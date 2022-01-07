
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xdrproc_t ;
typedef int statstime ;
typedef int resultproc_t ;
typedef enum clnt_stat { ____Placeholder_clnt_stat } clnt_stat ;


 int RPC_SUCCESS ;
 int RPC_TIMEDOUT ;
 int RSTATPROC_STATS ;
 int RSTATPROG ;
 int RSTATVERS_TIME ;
 int clnt_broadcast (int ,int ,int ,int ,int *,int ,int *,int ) ;
 int clnt_sperrno (int) ;
 int errx (int,char*,int ) ;
 scalar_t__ rstat_reply ;
 scalar_t__ xdr_statstime ;
 scalar_t__ xdr_void ;

__attribute__((used)) static void
allhosts(void)
{
 statstime host_stat;
 enum clnt_stat clnt_stat;

 clnt_stat = clnt_broadcast(RSTATPROG, RSTATVERS_TIME, RSTATPROC_STATS,
       (xdrproc_t)xdr_void, ((void*)0),
       (xdrproc_t)xdr_statstime, &host_stat,
       (resultproc_t)rstat_reply);
 if (clnt_stat != RPC_SUCCESS && clnt_stat != RPC_TIMEDOUT)
  errx(1, "%s", clnt_sperrno(clnt_stat));
}
