#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct cmdargs {size_t argc; size_t argn; TYPE_1__* prompt; int /*<<< orphan*/ * argv; } ;
struct TYPE_3__ {int auth; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int LOCAL_AUTH ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int) ; 
 scalar_t__ FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int
FUNC4(struct cmdargs const *arg)
{
  if (!arg->prompt || FUNC2(arg->prompt) ||
      (arg->argc > arg->argn && !FUNC3(arg->argv[arg->argn], "all") &&
       (arg->prompt->auth & LOCAL_AUTH)))
    FUNC0();
  if (arg->prompt)
    FUNC1(arg->prompt, 1);

  return 0;
}