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
struct bundle {int unit; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (char*,char*) ; 
 int /*<<< orphan*/  LogERROR ; 
 int PATH_MAX ; 
 char* _PATH_VARRUN ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int) ; 
 scalar_t__ FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,int,char*,char*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

void
FUNC7(struct bundle *bundle)
{
  FILE *lockfile;
  char pidfile[PATH_MAX];

  FUNC5(pidfile, sizeof pidfile, "%stun%d.pid", _PATH_VARRUN, bundle->unit);
  lockfile = FUNC0(pidfile, "w");
  if (lockfile != NULL) {
    FUNC2(lockfile, "%d\n", (int)FUNC3());
    FUNC1(lockfile);
  } else
    FUNC4(LogERROR, "Warning: Can't create %s: %s\n",
               pidfile, FUNC6(errno));
}