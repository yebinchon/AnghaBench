#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct cmdargs {int argc; int argn; int /*<<< orphan*/ * argv; TYPE_1__* cx; int /*<<< orphan*/  bundle; } ;
struct TYPE_2__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  LogWARN ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC2(struct cmdargs const *arg)
{
  if (arg->argc != arg->argn + 1)
    return -1;

  if (FUNC0(arg->bundle, arg->cx, arg->argv[arg->argn]))
    return 0;

  FUNC1(LogWARN, "%s -> %s: target name already exists\n",
             arg->cx->name, arg->argv[arg->argn]);
  return 1;
}