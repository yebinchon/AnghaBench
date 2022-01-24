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

/* Variables and functions */
 int /*<<< orphan*/  CLOSE_STAYDOWN ; 
 int /*<<< orphan*/  LogPHASE ; 
 int /*<<< orphan*/  SIGINT ; 
 void FUNC0 (int) ; 
 int /*<<< orphan*/  SignalBundle ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,void (*) (int)) ; 

__attribute__((used)) static void
FUNC4(int signo)
{
  /* NOTE, these are manual, we've done a setsid() */
  FUNC3(SIGINT, SIG_IGN);
  FUNC2(LogPHASE, "Caught signal %d, abort connection(s)\n", signo);
  FUNC1(SignalBundle, CLOSE_STAYDOWN);
  FUNC3(SIGINT, CloseConnection);
}