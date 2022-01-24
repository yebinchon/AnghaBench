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
struct TYPE_2__ {int /*<<< orphan*/  from; } ;
struct prompt {scalar_t__ Term; scalar_t__ fd_in; scalar_t__ fd_out; TYPE_1__ src; } ;

/* Variables and functions */
 int /*<<< orphan*/  LogPHASE ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct prompt*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct prompt*) ; 
 int /*<<< orphan*/  FUNC5 (struct prompt*) ; 
 scalar_t__ stdout ; 

void
FUNC6(struct prompt *p, int verbose)
{
  if (p) {
    if (p->Term != stdout) {
      FUNC1(p->Term);
      FUNC0(p->fd_in);
      if (p->fd_out != p->fd_in)
        FUNC0(p->fd_out);
      if (verbose)
        FUNC3(LogPHASE, "%s: Client connection dropped.\n", p->src.from);
    } else
      FUNC5(p);

    FUNC4(p);
    FUNC2(p);
  }
}