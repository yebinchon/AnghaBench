#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct in_addr {scalar_t__ s_addr; } ;
struct cmdargs {int argc; int argn; int /*<<< orphan*/ * argv; } ;

/* Variables and functions */
 struct in_addr FUNC0 (int /*<<< orphan*/ ) ; 
 void* INADDR_ANY ; 
 scalar_t__ INADDR_NONE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct in_addr) ; 
 int /*<<< orphan*/  LogWARN ; 
 int /*<<< orphan*/  la ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 

int
FUNC4(struct cmdargs const *arg)
{
  struct in_addr addr;

  if (arg->argc == arg->argn) {
    addr.s_addr = INADDR_ANY;
    FUNC1(la, addr);
    return 0;
  }

  if (arg->argc != arg->argn + 1)
    return -1;

  if (!FUNC3(arg->argv[arg->argn], "MYADDR")) {
    addr.s_addr = INADDR_ANY;
    FUNC1(la, addr);
    return 0;
  }

  addr = FUNC0(arg->argv[arg->argn]);
  if (addr.s_addr == INADDR_NONE) {
    FUNC2(LogWARN, "%s: invalid address\n", arg->argv[arg->argn]);
    return 1;
  }

  FUNC1(la, addr);
  return 0;
}