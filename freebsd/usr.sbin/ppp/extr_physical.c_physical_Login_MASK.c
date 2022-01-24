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
struct utmpx {int /*<<< orphan*/  ut_host; int /*<<< orphan*/  ut_line; int /*<<< orphan*/  ut_user; int /*<<< orphan*/  ut_id; int /*<<< orphan*/  ut_tv; int /*<<< orphan*/  ut_type; } ;
struct TYPE_4__ {char const* base; } ;
struct physical {scalar_t__ type; int Utmp; TYPE_2__ name; TYPE_1__* handler; } ;
struct TYPE_3__ {scalar_t__ type; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct utmpx*) ; 
 scalar_t__ PHYS_DIRECT ; 
 scalar_t__ TCP_DEVICE ; 
 scalar_t__ UDP_DEVICE ; 
 int /*<<< orphan*/  USER_PROCESS ; 
 char* FUNC1 (char*) ; 
 scalar_t__ FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 char* FUNC4 (int /*<<< orphan*/ ,char,int) ; 
 int /*<<< orphan*/  FUNC5 (struct utmpx*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int,char*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char const*,int) ; 

void
FUNC8(struct physical *p, const char *name)
{
  if (p->type == PHYS_DIRECT && *p->name.base && !p->Utmp) {
    struct utmpx ut;
    const char *connstr;
    char *colon;

    FUNC5(&ut, 0, sizeof ut);
    ut.ut_type = USER_PROCESS;
    FUNC3(&ut.ut_tv, NULL);
    FUNC6(ut.ut_id, sizeof ut.ut_id, "%xppp", (int)FUNC2());
    FUNC7(ut.ut_user, name, sizeof ut.ut_user);
    if (p->handler && (p->handler->type == TCP_DEVICE ||
                       p->handler->type == UDP_DEVICE)) {
      FUNC7(ut.ut_host, p->name.base, sizeof ut.ut_host);
      colon = FUNC4(ut.ut_host, ':', sizeof ut.ut_host);
      if (colon)
        *colon = '\0';
    } else
      FUNC7(ut.ut_line, p->name.base, sizeof ut.ut_line);
    if ((connstr = FUNC1("CONNECT")))
      /* mgetty sets this to the connection speed */
      FUNC7(ut.ut_host, connstr, sizeof ut.ut_host);
    FUNC0(&ut);
    p->Utmp = 1;
  }
}