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
struct kevent {int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  EVFILT_READ ; 
 int /*<<< orphan*/  EV_ADD ; 
 int /*<<< orphan*/  EV_DELETE ; 
 int /*<<< orphan*/  EV_EOF ; 
 int /*<<< orphan*/  FUNC0 (struct kevent*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,char*,...) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,struct kevent*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct kevent*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  kqfd ; 
 int /*<<< orphan*/ * sockfd ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (char const*) ; 
 int /*<<< orphan*/  FUNC8 () ; 

void
FUNC9(void)
{
    const char *test_id = "kevent(EVFILT_READ, EV_EOF)";
    struct kevent kev;

    FUNC7(test_id);

    /* Re-add the watch and make sure no events are pending */
    FUNC0(&kev, sockfd[0], EVFILT_READ, EV_ADD, 0, 0, &sockfd[0]);
    if (FUNC3(kqfd, &kev, 1, NULL, 0, NULL) < 0)
        FUNC2(1, "%s", test_id);
    FUNC8();

    if (FUNC1(sockfd[1]) < 0)
        FUNC2(1, "close(2)");

    kev.flags |= EV_EOF;
    FUNC4(&kev, FUNC5(kqfd));

    /* Delete the watch */
    FUNC0(&kev, sockfd[0], EVFILT_READ, EV_DELETE, 0, 0, &sockfd[0]);
    if (FUNC3(kqfd, &kev, 1, NULL, 0, NULL) < 0)
        FUNC2(1, "%s", test_id);

    FUNC6();
}