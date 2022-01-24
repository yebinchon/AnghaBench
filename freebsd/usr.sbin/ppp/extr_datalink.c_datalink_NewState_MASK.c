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
struct datalink {unsigned int state; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  LogERROR ; 
 int /*<<< orphan*/  LogPHASE ; 
 int /*<<< orphan*/  FUNC0 (struct datalink*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,unsigned int,...) ; 
 int /*<<< orphan*/ * states ; 

__attribute__((used)) static void
FUNC2(struct datalink *dl, unsigned state)
{
  if (state != dl->state) {
    if (state < sizeof states / sizeof states[0]) {
      FUNC1(LogPHASE, "%s: %s -> %s\n", dl->name, FUNC0(dl),
                 states[state]);
      dl->state = state;
    } else
      FUNC1(LogERROR, "%s: Can't enter state %d !\n", dl->name, state);
  }
}