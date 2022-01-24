#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  total; } ;
struct TYPE_11__ {int /*<<< orphan*/  name; TYPE_2__ stats; } ;
struct TYPE_10__ {scalar_t__ sz; } ;
struct TYPE_7__ {char* full; int /*<<< orphan*/  base; } ;
struct physical {TYPE_5__ link; TYPE_4__ input; int /*<<< orphan*/  connect_count; TYPE_3__* dl; TYPE_1__ name; } ;
struct TYPE_12__ {int /*<<< orphan*/  unit; } ;
struct TYPE_9__ {TYPE_6__* bundle; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_6__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (char*,char*) ; 
 int /*<<< orphan*/  LogALERT ; 
 int /*<<< orphan*/  LogPHASE ; 
 int /*<<< orphan*/  OPT_THROUGHPUT ; 
 int PATH_MAX ; 
 char* TUN_NAME ; 
 char* _PATH_VARRUN ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC5 (char*,int,char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC8(struct physical *p)
{
  FILE *lockfile;
  char fn[PATH_MAX];

  if (*p->name.full == '/') {
    FUNC5(fn, sizeof fn, "%s%s.if", _PATH_VARRUN, p->name.base);
    lockfile = FUNC1(fn, "w");
    if (lockfile != NULL) {
      FUNC3(lockfile, "%s%d\n", TUN_NAME, p->dl->bundle->unit);
      FUNC2(lockfile);
    } else
      FUNC4(LogALERT, "%s: Can't create %s: %s\n",
                 p->link.name, fn, FUNC6(errno));
  }

  FUNC7(&p->link.stats.total, "physical throughput",
                   FUNC0(p->dl->bundle, OPT_THROUGHPUT));
  p->connect_count++;
  p->input.sz = 0;

  FUNC4(LogPHASE, "%s: Connected!\n", p->link.name);
}