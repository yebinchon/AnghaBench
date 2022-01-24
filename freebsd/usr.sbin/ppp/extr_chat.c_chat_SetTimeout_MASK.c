#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int load; char* name; struct chat* arg; int /*<<< orphan*/  func; } ;
struct chat {int TimeoutSec; TYPE_1__ timeout; } ;

/* Variables and functions */
 int SECTICKS ; 
 int /*<<< orphan*/  chat_TimeoutTimer ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 

__attribute__((used)) static void
FUNC2(struct chat *c)
{
  FUNC1(&c->timeout);
  if (c->TimeoutSec > 0) {
    c->timeout.load = SECTICKS * c->TimeoutSec;
    c->timeout.func = chat_TimeoutTimer;
    c->timeout.name = "chat timeout";
    c->timeout.arg = c;
    FUNC0(&c->timeout);
  }
}