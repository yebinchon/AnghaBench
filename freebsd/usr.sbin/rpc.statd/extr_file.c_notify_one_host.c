
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int xdrproc_t ;
struct timeval {int member_0; int member_1; } ;
struct TYPE_4__ {char* mon_name; int state; } ;
typedef TYPE_1__ stat_chge ;
typedef int our_hostname ;
struct TYPE_5__ {int ourState; } ;
typedef int CLIENT ;


 int FALSE ;
 int LOG_DEBUG ;
 int LOG_ERR ;
 scalar_t__ RPC_SUCCESS ;
 int SM_MAXSTRLEN ;
 int SM_NOTIFY ;
 int SM_PROG ;
 int SM_VERS ;
 int TRUE ;
 scalar_t__ clnt_call (int *,int ,int ,TYPE_1__*,int ,char*,struct timeval) ;
 int * clnt_create (char*,int ,int ,char*) ;
 int clnt_destroy (int *) ;
 int clnt_spcreateerror (char*) ;
 scalar_t__ debug ;
 int gethostname (char*,int) ;
 TYPE_2__* status_info ;
 int syslog (int ,char*,char*,...) ;
 scalar_t__ xdr_stat_chge ;
 scalar_t__ xdr_void ;

__attribute__((used)) static int notify_one_host(char *hostname, int verbose)
{
  struct timeval timeout = { 20, 0 };
  CLIENT *cli;
  char dummy;
  stat_chge arg;
  char our_hostname[SM_MAXSTRLEN+1];

  gethostname(our_hostname, sizeof(our_hostname));
  our_hostname[SM_MAXSTRLEN] = '\0';
  arg.mon_name = our_hostname;
  arg.state = status_info->ourState;

  if (debug) syslog (LOG_DEBUG, "Sending SM_NOTIFY to host %s from %s", hostname, our_hostname);

  cli = clnt_create(hostname, SM_PROG, SM_VERS, "udp");
  if (!cli)
  {
    syslog(LOG_ERR, "Failed to contact host %s%s", hostname,
      clnt_spcreateerror(""));
    return (FALSE);
  }

  if (clnt_call(cli, SM_NOTIFY, (xdrproc_t)xdr_stat_chge, &arg,
      (xdrproc_t)xdr_void, &dummy, timeout)
    != RPC_SUCCESS)
  {
    if (verbose)
      syslog(LOG_ERR, "Failed to contact rpc.statd at host %s", hostname);
    clnt_destroy(cli);
    return (FALSE);
  }

  clnt_destroy(cli);
  return (TRUE);
}
