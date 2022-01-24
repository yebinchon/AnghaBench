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
 scalar_t__ SignalBundle ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 

void
FUNC7(int excode)
{
  if (SignalBundle)
    FUNC6(SignalBundle);
  FUNC5(LogPHASE, "PPP Terminated (%s).\n", FUNC2(excode));
  if (SignalBundle) {
    FUNC0(SignalBundle, NULL, CLOSE_STAYDOWN);
    FUNC1(SignalBundle);
  }
  FUNC4();
  FUNC3(excode);
}