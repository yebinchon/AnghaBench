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
struct cmdargs {TYPE_1__* prompt; } ;
struct TYPE_2__ {int /*<<< orphan*/  logmask; } ;

/* Variables and functions */
 int LOG_KEPT_LOCAL ; 
 int LOG_KEPT_SYSLOG ; 
 int LogMAX ; 
 int LogMIN ; 
 int FUNC0 (int) ; 
 int FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,char*,...) ; 

int
FUNC4(struct cmdargs const *arg)
{
  int i;

  FUNC3(arg->prompt, "Log:  ");
  for (i = LogMIN; i <= LogMAX; i++)
    if (FUNC0(i) & LOG_KEPT_SYSLOG)
      FUNC3(arg->prompt, " %s", FUNC2(i));

  FUNC3(arg->prompt, "\nLocal:");
  for (i = LogMIN; i <= LogMAX; i++)
    if (FUNC1(i, arg->prompt->logmask) & LOG_KEPT_LOCAL)
      FUNC3(arg->prompt, " %s", FUNC2(i));

  FUNC3(arg->prompt, "\n");

  return 0;
}