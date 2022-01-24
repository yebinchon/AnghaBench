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
struct cmdargs {int argc; int argn; TYPE_1__* bundle; int /*<<< orphan*/ * argv; TYPE_2__* cmd; } ;
struct TYPE_4__ {scalar_t__ args; } ;
struct TYPE_3__ {scalar_t__ NatEnabled; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,long,long) ; 
 int /*<<< orphan*/  LogWARN ; 
 int /*<<< orphan*/  la ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int
FUNC4(struct cmdargs const *arg)
{
  long param = (long)arg->cmd->args;

  if (arg->argc == arg->argn+1) {
    if (FUNC2(arg->argv[arg->argn], "yes") == 0) {
      if (arg->bundle->NatEnabled) {
	FUNC0(la, param, param);
	return 0;
      }
      FUNC1(LogWARN, "nat not enabled\n");
    } else if (FUNC3(arg->argv[arg->argn], "no") == 0) {
      if (arg->bundle->NatEnabled) {
	FUNC0(la, 0, param);
	return 0;
      }
      FUNC1(LogWARN, "nat not enabled\n");
    }
  }
  return -1;
}