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
struct TYPE_2__ {int fd; } ;
struct bundle {TYPE_1__ notify; } ;

/* Variables and functions */
 char EX_NORMAL ; 
 char EX_RECONNECT ; 
 char EX_REDIAL ; 
 int /*<<< orphan*/  LogCHAT ; 
 int /*<<< orphan*/  LogERROR ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 char* FUNC1 (char) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,...) ; 
 int FUNC3 (int,char*,int) ; 

void
FUNC4(struct bundle *bundle, char c)
{
  if (bundle->notify.fd != -1) {
    int ret;

    ret = FUNC3(bundle->notify.fd, &c, 1);
    if (c != EX_REDIAL && c != EX_RECONNECT) {
      if (ret == 1)
        FUNC2(LogCHAT, "Parent notified of %s\n",
                   c == EX_NORMAL ? "success" : "failure");
      else
        FUNC2(LogERROR, "Failed to notify parent of success\n");
      FUNC0(bundle->notify.fd);
      bundle->notify.fd = -1;
    } else if (ret == 1)
      FUNC2(LogCHAT, "Parent notified of %s\n", FUNC1(c));
    else
      FUNC2(LogERROR, "Failed to notify parent of %s\n", FUNC1(c));
  }
}