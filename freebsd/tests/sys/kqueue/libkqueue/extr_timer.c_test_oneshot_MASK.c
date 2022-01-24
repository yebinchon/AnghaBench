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
struct kevent {int flags; int data; } ;

/* Variables and functions */
 int /*<<< orphan*/  EVFILT_TIMER ; 
 int EV_ADD ; 
 int EV_CLEAR ; 
 int EV_ONESHOT ; 
 int /*<<< orphan*/  FUNC0 (struct kevent*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,char const*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,struct kevent*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct kevent*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  kqfd ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (char const*) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  vnode_fd ; 

__attribute__((used)) static void
FUNC9(void)
{
    const char *test_id = "kevent(EVFILT_TIMER, EV_ONESHOT)";
    struct kevent kev;

    FUNC7(test_id);

    FUNC8();

    FUNC0(&kev, vnode_fd, EVFILT_TIMER, EV_ADD | EV_ONESHOT, 0, 500,NULL);
    if (FUNC2(kqfd, &kev, 1, NULL, 0, NULL) < 0)
        FUNC1(1, "%s", test_id);

    /* Retrieve the event */
    kev.flags = EV_ADD | EV_CLEAR | EV_ONESHOT;
    kev.data = 1; 
    FUNC3(&kev, FUNC4(kqfd));

    /* Check if the event occurs again */
    FUNC5(3);
    FUNC8();


    FUNC6();
}