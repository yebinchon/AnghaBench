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
struct TYPE_2__ {scalar_t__ num; } ;
struct chat {char* script; scalar_t__ argc; int arg; int TimeoutSec; char const* phone; int /*<<< orphan*/  timeout; int /*<<< orphan*/  pause; TYPE_1__ abort; scalar_t__ TimedOut; int /*<<< orphan*/ * nargptr; int /*<<< orphan*/ * argptr; int /*<<< orphan*/  argv; int /*<<< orphan*/  state; } ;

/* Variables and functions */
 int /*<<< orphan*/  CHAT_EXPECT ; 
 scalar_t__ FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PARSE_NOHASH ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

int
FUNC4(struct chat *c, const char *data, const char *phone)
{
  c->state = CHAT_EXPECT;

  if (data == NULL) {
    *c->script = '\0';
    c->argc = 0;
  } else {
    FUNC2(c->script, data, sizeof c->script - 1);
    c->script[sizeof c->script - 1] = '\0';
    c->argc = FUNC0(c->script, c->argv, FUNC1(c->argv), PARSE_NOHASH);
  }

  c->arg = -1;
  c->argptr = NULL;
  c->nargptr = NULL;

  c->TimeoutSec = 30;
  c->TimedOut = 0;
  c->phone = phone;
  c->abort.num = 0;

  FUNC3(&c->pause);
  FUNC3(&c->timeout);

  return c->argc >= 0;
}