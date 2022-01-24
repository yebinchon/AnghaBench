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
struct kevent {int data; int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  EVFILT_TIMER ; 
 int /*<<< orphan*/  EV_ADD ; 
 int /*<<< orphan*/  EV_CLEAR ; 
 int /*<<< orphan*/  EV_DELETE ; 
 int /*<<< orphan*/  FUNC0 (struct kevent*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,char const*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,struct kevent*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct kevent*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  kqfd ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (char const*) ; 

void
FUNC7(void)
{
    const char *test_id = "kevent(EVFILT_TIMER, wait)";
    struct kevent kev;

    FUNC6(test_id);

    FUNC0(&kev, 1, EVFILT_TIMER, EV_ADD, 0, 1000, NULL);
    if (FUNC2(kqfd, &kev, 1, NULL, 0, NULL) < 0)
        FUNC1(1, "%s", test_id);

    kev.flags |= EV_CLEAR;
    kev.data = 1; 
    FUNC3(&kev, FUNC4(kqfd));

    FUNC0(&kev, 1, EVFILT_TIMER, EV_DELETE, 0, 0, NULL);
    if (FUNC2(kqfd, &kev, 1, NULL, 0, NULL) < 0)
        FUNC1(1, "%s", test_id);

    FUNC5();
}