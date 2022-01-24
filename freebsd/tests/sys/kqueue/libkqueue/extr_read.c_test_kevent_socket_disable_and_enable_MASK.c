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
 int /*<<< orphan*/  EVFILT_READ ; 
 int EV_ADD ; 
 int EV_DELETE ; 
 int EV_DISABLE ; 
 int EV_ENABLE ; 
 int /*<<< orphan*/  FUNC0 (struct kevent*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,char const*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,struct kevent*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct kevent*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  kqfd ; 
 int /*<<< orphan*/ * sockfd ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (char const*) ; 
 int /*<<< orphan*/  FUNC9 () ; 

void
FUNC10(void)
{
    const char *test_id = "kevent(EVFILT_READ, EV_DISABLE)";
    struct kevent kev;

    FUNC8(test_id);

    /*
     * Write to the socket before adding the event. This way we can verify that
     * enabling a triggered kevent causes the event to be returned immediately.
     */
    FUNC6();

    /* Add a disabled event. */
    FUNC0(&kev, sockfd[0], EVFILT_READ, EV_ADD | EV_DISABLE, 0, 0, &sockfd[0]);
    if (FUNC2(kqfd, &kev, 1, NULL, 0, NULL) < 0)
        FUNC1(1, "%s", test_id);

    FUNC9();

    /* Re-enable the knote, then see if an event is generated */
    kev.flags = EV_ENABLE;
    if (FUNC2(kqfd, &kev, 1, NULL, 0, NULL) < 0)
        FUNC1(1, "%s", test_id);
    kev.flags = EV_ADD;
    kev.data = 1;
    FUNC3(&kev, FUNC4(kqfd));

    FUNC5();

    kev.flags = EV_DELETE;
    if (FUNC2(kqfd, &kev, 1, NULL, 0, NULL) < 0)
        FUNC1(1, "%s", test_id);

    FUNC7();
}