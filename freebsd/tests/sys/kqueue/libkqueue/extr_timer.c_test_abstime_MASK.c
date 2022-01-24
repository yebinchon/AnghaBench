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
typedef  scalar_t__ time_t ;
struct kevent {int flags; int data; scalar_t__ fflags; } ;
typedef  int /*<<< orphan*/  intmax_t ;

/* Variables and functions */
 int /*<<< orphan*/  EVFILT_TIMER ; 
 int EV_ADD ; 
 int EV_ONESHOT ; 
 int /*<<< orphan*/  FUNC0 (struct kevent*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,scalar_t__,int /*<<< orphan*/ *) ; 
 int NOTE_ABSTIME ; 
 int NOTE_SECONDS ; 
 int /*<<< orphan*/  FUNC1 (int,char*,char const*,...) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,struct kevent*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct kevent*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  kqfd ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (char const*) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  vnode_fd ; 

__attribute__((used)) static void
FUNC10(void)
{
    const char *test_id = "kevent(EVFILT_TIMER, EV_ONESHOT, NOTE_ABSTIME)";
    struct kevent kev;
    time_t start;
    time_t stop;
    const int timeout = 3;

    FUNC7(test_id);

    FUNC8();

    start = FUNC9(NULL);
    FUNC0(&kev, vnode_fd, EVFILT_TIMER, EV_ADD | EV_ONESHOT,
      NOTE_ABSTIME | NOTE_SECONDS, start + timeout, NULL);
    if (FUNC2(kqfd, &kev, 1, NULL, 0, NULL) < 0)
        FUNC1(1, "%s", test_id);

    /* Retrieve the event */
    kev.flags = EV_ADD | EV_ONESHOT;
    kev.data = 1;
    kev.fflags = 0;
    FUNC3(&kev, FUNC4(kqfd));
    stop = FUNC9(NULL);
    if (stop < start + timeout)
        FUNC1(1, "too early %jd %jd", (intmax_t)stop, (intmax_t)(start + timeout));

    /* Check if the event occurs again */
    FUNC5(3);
    FUNC8();

    FUNC6();
}