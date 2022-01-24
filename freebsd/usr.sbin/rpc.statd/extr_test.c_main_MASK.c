#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct sm_stat_res {int dummy; } ;
struct TYPE_3__ {char* my_name; int my_proc; int /*<<< orphan*/  my_vers; int /*<<< orphan*/  my_prog; } ;
struct TYPE_4__ {char* mon_name; TYPE_1__ my_id; } ;
struct mon {TYPE_2__ mon_id; } ;
typedef  int /*<<< orphan*/  CLIENT ;

/* Variables and functions */
 int /*<<< orphan*/  SM_PROG ; 
 int /*<<< orphan*/  SM_VERS ; 
 int /*<<< orphan*/ * FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 struct sm_stat_res* FUNC4 (struct mon*,int /*<<< orphan*/ *) ; 
 void* FUNC5 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  stderr ; 
 scalar_t__ FUNC6 (char*,char*) ; 

int FUNC7(int argc, char **argv)
{
  CLIENT *cli;
  char dummy;
  void *out;
  struct mon mon;

  if (argc < 2)
  {
    FUNC2(stderr, "usage: test <hostname> | crash\n");
    FUNC2(stderr, "always talks to statd at localhost\n");
    FUNC1(1);
  }

  FUNC3("Creating client for localhost\n" );
  cli = FUNC0("localhost", SM_PROG, SM_VERS, "udp");
  if (!cli)
  {
    FUNC3("Failed to create client\n");
    FUNC1(1);
  }

  mon.mon_id.mon_name = argv[1];
  mon.mon_id.my_id.my_name = argv[1];
  mon.mon_id.my_id.my_prog = SM_PROG;
  mon.mon_id.my_id.my_vers = SM_VERS;
  mon.mon_id.my_id.my_proc = 1;	/* have it call sm_stat() !!!	*/

  if (FUNC6(argv[1], "crash"))
  {
    /* Hostname given		*/
    struct sm_stat_res *res;

    res = FUNC4(&mon, cli);
    if (res)
      FUNC3("Success!\n");
    else
      FUNC3("Fail\n");  
  }
  else
  {
    out = FUNC5(&dummy, cli);
    if (out)
      FUNC3("Success!\n");
    else
      FUNC3("Fail\n");  
  }

  return 0;
}