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
struct TYPE_2__ {int /*<<< orphan*/  timer; } ;
struct datalink {int state; struct datalink* name; int /*<<< orphan*/  physical; struct datalink* next; TYPE_1__ dial; int /*<<< orphan*/  chat; } ;

/* Variables and functions */
 int DATALINK_CLOSED ; 
#define  DATALINK_DIAL 130 
#define  DATALINK_HANGUP 129 
#define  DATALINK_LOGIN 128 
 int /*<<< orphan*/  LogERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct datalink*) ; 
 int /*<<< orphan*/  FUNC3 (struct datalink*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

struct datalink *
FUNC7(struct datalink *dl)
{
  struct datalink *result;

  if (dl->state != DATALINK_CLOSED) {
    FUNC4(LogERROR, "Oops, destroying a datalink in state %s\n",
              FUNC2(dl));
    switch (dl->state) {
      case DATALINK_HANGUP:
      case DATALINK_DIAL:
      case DATALINK_LOGIN:
        FUNC1(&dl->chat);		/* Gotta blat the timers ! */
        break;
    }
  }

  FUNC0(&dl->chat);
  FUNC6(&dl->dial.timer);
  result = dl->next;
  FUNC5(dl->physical);
  FUNC3(dl->name);
  FUNC3(dl);

  return result;
}