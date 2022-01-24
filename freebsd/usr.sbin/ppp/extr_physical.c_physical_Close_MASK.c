#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct utmpx {int /*<<< orphan*/  ut_id; int /*<<< orphan*/  ut_tv; int /*<<< orphan*/  ut_type; } ;
struct TYPE_9__ {char* full; char* base; } ;
struct TYPE_6__ {int /*<<< orphan*/  total; } ;
struct TYPE_7__ {int /*<<< orphan*/  name; TYPE_1__ stats; } ;
struct physical {int fd; scalar_t__ session_owner; TYPE_4__ name; TYPE_3__* handler; TYPE_2__ link; TYPE_5__* dl; scalar_t__ Utmp; } ;
typedef  scalar_t__ pid_t ;
struct TYPE_10__ {int /*<<< orphan*/  bundle; } ;
struct TYPE_8__ {int /*<<< orphan*/  (* destroy ) (struct physical*) ;int /*<<< orphan*/  (* cooked ) (struct physical*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  DEAD_PROCESS ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct utmpx*) ; 
 int FUNC2 (char*) ; 
 int /*<<< orphan*/  LogALERT ; 
 int /*<<< orphan*/  LogDEBUG ; 
 int /*<<< orphan*/  LogPHASE ; 
 int PATH_MAX ; 
 int /*<<< orphan*/  SIGHUP ; 
 char* _PATH_VARRUN ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  errno ; 
 scalar_t__ FUNC5 () ; 
 scalar_t__ FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC10 (struct utmpx*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (struct physical*) ; 
 int /*<<< orphan*/  FUNC12 (struct physical*) ; 
 int /*<<< orphan*/  FUNC13 (char*,int,char*,...) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct physical*) ; 
 int /*<<< orphan*/  FUNC16 (struct physical*) ; 
 scalar_t__ FUNC17 (int) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *) ; 

void
FUNC20(struct physical *p)
{
  int newsid;
  char fn[PATH_MAX];
  struct utmpx ut;

  if (p->fd < 0)
    return;

  FUNC8(LogDEBUG, "%s: Close\n", p->link.name);

  if (p->handler && p->handler->cooked)
    (*p->handler->cooked)(p);

  FUNC11(p);
  if (p->Utmp) {
    FUNC10(&ut, 0, sizeof ut);
    ut.ut_type = DEAD_PROCESS;
    FUNC7(&ut.ut_tv, NULL);
    FUNC13(ut.ut_id, sizeof ut.ut_id, "%xppp", (int)FUNC6());
    FUNC1(&ut);
    p->Utmp = 0;
  }
  newsid = FUNC17(p->fd) == FUNC5();
  FUNC4(p->fd);
  p->fd = -1;
  FUNC9(p->dl);

  FUNC19(&p->link.stats.total);
  FUNC18(&p->link.stats.total, LogPHASE, p->link.name);

  if (p->session_owner != (pid_t)-1) {
    FUNC8(LogPHASE, "%s: HUPing %ld\n", p->link.name,
               (long)p->session_owner);
    FUNC0(p->session_owner, SIGHUP);
    p->session_owner = (pid_t)-1;
  }

  if (newsid)
    FUNC3(p->dl->bundle, 0);

  if (*p->name.full == '/') {
    FUNC13(fn, sizeof fn, "%s%s.if", _PATH_VARRUN, p->name.base);
    if (FUNC2(fn) == -1)
      FUNC8(LogALERT, "%s: Can't remove %s: %s\n",
                 p->link.name, fn, FUNC14(errno));
  }
  FUNC12(p);
  if (p->handler && p->handler->destroy)
    (*p->handler->destroy)(p);
  p->handler = NULL;
  p->name.base = p->name.full;
  *p->name.full = '\0';
}