
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xdrproc_t ;
struct timeval {scalar_t__ tv_usec; scalar_t__ tv_sec; } ;
struct sockaddr {int dummy; } ;
typedef int nlm4_res ;
typedef int CLIENT ;


 int LOG_DEBUG ;
 int NLM_VERS4 ;
 int clnt_call (int *,int,int ,int *,int ,char*,struct timeval) ;
 int clnt_sperrno (int) ;
 int debug_level ;
 int * get_client (struct sockaddr*,int ) ;
 int syslog (int ,char*,int,int ) ;
 scalar_t__ xdr_nlm4_res ;
 scalar_t__ xdr_void ;

void
transmit4_result(int opcode, nlm4_res *result, struct sockaddr *addr)
{
 static char dummy;
 CLIENT *cli;
 struct timeval timeo;
 int success;

 if ((cli = get_client(addr, NLM_VERS4)) != ((void*)0)) {
  timeo.tv_sec = 0;
  timeo.tv_usec = 0;

  success = clnt_call(cli, opcode,
      (xdrproc_t)xdr_nlm4_res, result,
      (xdrproc_t)xdr_void, &dummy, timeo);

  if (debug_level > 2)
   syslog(LOG_DEBUG, "clnt_call returns %d(%s)",
       success, clnt_sperrno(success));
 }
}
