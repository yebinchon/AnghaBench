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
 int /*<<< orphan*/  EV_ADD ; 
 int /*<<< orphan*/  FUNC0 (struct kevent*,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int NOTE_ATTRIB ; 
 int NOTE_DELETE ; 
 int NOTE_RENAME ; 
 int NOTE_WRITE ; 
 int /*<<< orphan*/  O_RDONLY ; 
 int /*<<< orphan*/  FUNC1 (int,char*,char const*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,struct kevent*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  kqfd ; 
 scalar_t__ FUNC3 (char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (char const*) ; 
 scalar_t__ vnode_fd ; 

void
FUNC8(void)
{
    const char *test_id = "kevent(EVFILT_VNODE, EV_ADD)";
    const char *testfile = "./kqueue-test.tmp";
    struct kevent kev;

    FUNC7(test_id);

    FUNC6("touch ./kqueue-test.tmp");
    vnode_fd = FUNC3(testfile, O_RDONLY);
    if (vnode_fd < 0)
        FUNC1(1, "open of %s", testfile);
    else
        FUNC4("vnode_fd = %d\n", vnode_fd);

    FUNC0(&kev, vnode_fd, EVFILT_VNODE, EV_ADD, 
            NOTE_WRITE | NOTE_ATTRIB | NOTE_RENAME | NOTE_DELETE, 0, NULL);
    if (FUNC2(kqfd, &kev, 1, NULL, 0, NULL) < 0)
        FUNC1(1, "%s", test_id);

    FUNC5();
}