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
struct mppe_state {int flushnext; scalar_t__ stateless; } ;

/* Variables and functions */
 int /*<<< orphan*/  LogCCP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int
FUNC1(void *v)
{
  struct mppe_state *mop = (struct mppe_state *)v;

  if (mop->stateless)
    FUNC0(LogCCP, "MPPE: Unexpected output channel reset\n");
  else {
    FUNC0(LogCCP, "MPPE: Output channel reset\n");
    mop->flushnext = 1;
  }

  return 0;		/* Ask FSM not to ACK */
}