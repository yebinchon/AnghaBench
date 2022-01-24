#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  xdrproc_t ;
struct timeval {int member_0; int /*<<< orphan*/  member_1; } ;
struct TYPE_4__ {char* mon_name; int /*<<< orphan*/  state; } ;
typedef  TYPE_1__ stat_chge ;
typedef  int /*<<< orphan*/  our_hostname ;
struct TYPE_5__ {int /*<<< orphan*/  ourState; } ;
typedef  int /*<<< orphan*/  CLIENT ;

/* Variables and functions */
 int FALSE ; 
 int /*<<< orphan*/  LOG_DEBUG ; 
 int /*<<< orphan*/  LOG_ERR ; 
 scalar_t__ RPC_SUCCESS ; 
 int SM_MAXSTRLEN ; 
 int /*<<< orphan*/  SM_NOTIFY ; 
 int /*<<< orphan*/  SM_PROG ; 
 int /*<<< orphan*/  SM_VERS ; 
 int TRUE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ ,char*,struct timeval) ; 
 int /*<<< orphan*/ * FUNC1 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 scalar_t__ debug ; 
 int /*<<< orphan*/  FUNC4 (char*,int) ; 
 TYPE_2__* status_info ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,char*,...) ; 
 scalar_t__ xdr_stat_chge ; 
 scalar_t__ xdr_void ; 

__attribute__((used)) static int FUNC6(char *hostname, int verbose)
{
  struct timeval timeout = { 20, 0 };	/* 20 secs timeout		*/
  CLIENT *cli;
  char dummy; 
  stat_chge arg;
  char our_hostname[SM_MAXSTRLEN+1];

  FUNC4(our_hostname, sizeof(our_hostname));
  our_hostname[SM_MAXSTRLEN] = '\0';
  arg.mon_name = our_hostname;
  arg.state = status_info->ourState;

  if (debug) FUNC5 (LOG_DEBUG, "Sending SM_NOTIFY to host %s from %s", hostname, our_hostname);

  cli = FUNC1(hostname, SM_PROG, SM_VERS, "udp");
  if (!cli)
  {
    FUNC5(LOG_ERR, "Failed to contact host %s%s", hostname,
      FUNC3(""));
    return (FALSE);
  }

  if (FUNC0(cli, SM_NOTIFY, (xdrproc_t)xdr_stat_chge, &arg,
      (xdrproc_t)xdr_void, &dummy, timeout)
    != RPC_SUCCESS)
  {
    if (verbose)
      FUNC5(LOG_ERR, "Failed to contact rpc.statd at host %s", hostname);
    FUNC2(cli);
    return (FALSE);
  }

  FUNC2(cli);
  return (TRUE);
}