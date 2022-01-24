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
struct kevent {scalar_t__ ident; scalar_t__ filter; scalar_t__ fflags; int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 scalar_t__ EVFILT_VNODE ; 
 int EV_ADD ; 
 int EV_DELETE ; 
 int EV_DISPATCH ; 
 int /*<<< orphan*/  FUNC0 (struct kevent*,scalar_t__,scalar_t__,int,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ NOTE_ATTRIB ; 
 int /*<<< orphan*/  FUNC1 (int,char*,...) ; 
 int FUNC2 (int /*<<< orphan*/ ,struct kevent*,int,struct kevent*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  kqfd ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 scalar_t__ FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (char const*) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 scalar_t__ vnode_fd ; 

void
FUNC8(void)
{
    const char *test_id = "kevent(EVFILT_VNODE, EV_DISPATCH)";
    struct kevent kev;
    int nfds;

    FUNC6(test_id);

    FUNC7();

    FUNC0(&kev, vnode_fd, EVFILT_VNODE, EV_ADD | EV_DISPATCH, NOTE_ATTRIB, 0, NULL);
    if (FUNC2(kqfd, &kev, 1, NULL, 0, NULL) < 0)
        FUNC1(1, "%s", test_id);

    if (FUNC5("touch ./kqueue-test.tmp") < 0)
        FUNC1(1, "system");

    nfds = FUNC2(kqfd, NULL, 0, &kev, 1, NULL);
    if (nfds < 1)
        FUNC1(1, "%s", test_id);
    if (kev.ident != vnode_fd ||
            kev.filter != EVFILT_VNODE || 
            kev.fflags != NOTE_ATTRIB)
        FUNC1(1, "%s - incorrect event (sig=%u; filt=%d; flags=%d)", 
                test_id, (unsigned int)kev.ident, kev.filter, kev.flags);

    /* Confirm that the watch is disabled automatically */
    FUNC3("-- checking that watch is disabled");
    if (FUNC5("touch ./kqueue-test.tmp") < 0)
        FUNC1(1, "system");
    FUNC7();

    /* Delete the watch */
    FUNC0(&kev, vnode_fd, EVFILT_VNODE, EV_DELETE, NOTE_ATTRIB, 0, NULL);
    if (FUNC2(kqfd, &kev, 1, NULL, 0, NULL) < 0)
        FUNC1(1, "remove watch failed: %s", test_id);

    FUNC4();
}