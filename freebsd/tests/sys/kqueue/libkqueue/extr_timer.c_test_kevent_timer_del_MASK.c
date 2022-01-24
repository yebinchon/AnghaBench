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
struct kevent {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  EVFILT_TIMER ; 
 int /*<<< orphan*/  EV_DELETE ; 
 int /*<<< orphan*/  FUNC0 (struct kevent*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,char const*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,struct kevent*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  kqfd ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (char const*) ; 
 int /*<<< orphan*/  FUNC5 () ; 

void
FUNC6(void)
{
    const char *test_id = "kevent(EVFILT_TIMER, EV_DELETE)";
    struct kevent kev;

    FUNC4(test_id);

    FUNC0(&kev, 1, EVFILT_TIMER, EV_DELETE, 0, 0, NULL);
    if (FUNC2(kqfd, &kev, 1, NULL, 0, NULL) < 0)
        FUNC1(1, "%s", test_id);

    FUNC5();

    FUNC3();
}