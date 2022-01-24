#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  logout; int /*<<< orphan*/  hangup; } ;
struct TYPE_6__ {TYPE_2__ script; } ;
struct TYPE_4__ {scalar_t__ run; } ;
struct datalink {int stayonline; scalar_t__ state; TYPE_3__ cfg; int /*<<< orphan*/  chat; TYPE_1__ script; int /*<<< orphan*/  physical; } ;

/* Variables and functions */
 int CLOSE_LCP ; 
 int CLOSE_STAYDOWN ; 
 scalar_t__ DATALINK_CLOSED ; 
 scalar_t__ DATALINK_HANGUP ; 
 scalar_t__ DATALINK_LOGOUT ; 
 scalar_t__ DATALINK_OPENING ; 
 scalar_t__ DATALINK_READY ; 
 int /*<<< orphan*/  LogWARN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct datalink*) ; 
 int /*<<< orphan*/  FUNC2 (struct datalink*) ; 
 int /*<<< orphan*/  FUNC3 (struct datalink*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct datalink*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

void
FUNC8(struct datalink *dl, int how)
{
  int stayonline;

  if (how == CLOSE_LCP)
    FUNC1(dl);
  else if (how == CLOSE_STAYDOWN)
    FUNC4(dl);

  stayonline = dl->stayonline;
  dl->stayonline = 0;

  if (dl->state >= DATALINK_READY && stayonline) {
    FUNC7(dl->physical);
    FUNC3(dl, DATALINK_READY);
  } else if (dl->state != DATALINK_CLOSED && dl->state != DATALINK_HANGUP) {
    FUNC6(dl->physical);
    if (dl->script.run && dl->state != DATALINK_OPENING) {
      if (dl->state == DATALINK_LOGOUT) {
        FUNC3(dl, DATALINK_HANGUP);
        if (!FUNC0(&dl->chat, dl->cfg.script.hangup, NULL))
          FUNC5(LogWARN, "Invalid hangup script\n");
      } else {
        FUNC3(dl, DATALINK_LOGOUT);
        if (!FUNC0(&dl->chat, dl->cfg.script.logout, NULL))
          FUNC5(LogWARN, "Invalid logout script\n");
      }
    } else
      FUNC2(dl);
  }
}