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
struct kevent {int data; } ;

/* Variables and functions */
 int /*<<< orphan*/  EVFILT_READ ; 
 int EV_ADD ; 
 int EV_DELETE ; 
 int EV_DISPATCH ; 
 int /*<<< orphan*/  FUNC0 (struct kevent*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,char const*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,struct kevent*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct kevent*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  kqfd ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/ * sockfd ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (char const*) ; 
 int /*<<< orphan*/  FUNC10 () ; 

void
FUNC11(void)
{
    const char *test_id = "kevent(EVFILT_READ, EV_DISPATCH)";

    FUNC9(test_id);

    struct kevent kev;

    /* Re-add the watch and make sure no events are pending */
    FUNC7("-- re-adding knote");
    FUNC0(&kev, sockfd[0], EVFILT_READ, EV_ADD | EV_DISPATCH, 0, 0, &sockfd[0]);
    if (FUNC2(kqfd, &kev, 1, NULL, 0, NULL) < 0)
        FUNC1(1, "%s", test_id);
    FUNC10();

    /* The event will occur only once, even though EV_CLEAR is not
       specified. */
    FUNC6();
    kev.data = 1;
    FUNC3(&kev, FUNC4(kqfd));
    FUNC10();

    /* Since the knote is disabled, the EV_DELETE operation succeeds. */
    FUNC0(&kev, sockfd[0], EVFILT_READ, EV_DELETE, 0, 0, &sockfd[0]);
    if (FUNC2(kqfd, &kev, 1, NULL, 0, NULL) < 0)
        FUNC1(1, "%s", test_id);

    FUNC5();

    FUNC8();
}