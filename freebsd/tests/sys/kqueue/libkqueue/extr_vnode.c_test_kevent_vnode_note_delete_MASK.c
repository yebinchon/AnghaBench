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
 int /*<<< orphan*/  EVFILT_VNODE ; 
 int EV_ADD ; 
 int EV_ONESHOT ; 
 int /*<<< orphan*/  FUNC0 (struct kevent*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  NOTE_DELETE ; 
 int /*<<< orphan*/  FUNC1 (int,char*,...) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,struct kevent*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct kevent*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  kqfd ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (char const*) ; 
 scalar_t__ FUNC7 (char*) ; 
 int /*<<< orphan*/  vnode_fd ; 

void
FUNC8(void)
{
    const char *test_id = "kevent(EVFILT_VNODE, NOTE_DELETE)";
    struct kevent kev;

    FUNC6(test_id);

    FUNC0(&kev, vnode_fd, EVFILT_VNODE, EV_ADD | EV_ONESHOT, NOTE_DELETE, 0, NULL);
    if (FUNC2(kqfd, &kev, 1, NULL, 0, NULL) < 0)
        FUNC1(1, "%s", test_id);

    if (FUNC7("./kqueue-test.tmp") < 0)
        FUNC1(1, "unlink");

    FUNC3(&kev, FUNC4(kqfd));

    FUNC5();
}