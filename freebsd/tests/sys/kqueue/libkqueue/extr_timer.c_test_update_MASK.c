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
struct kevent {int data; int /*<<< orphan*/  fflags; int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  EVFILT_TIMER ; 
 int EV_ADD ; 
 int /*<<< orphan*/  EV_CLEAR ; 
 int EV_ONESHOT ; 
 int /*<<< orphan*/  FUNC0 (struct kevent*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,long,void*) ; 
 long FUNC1 (int) ; 
 int /*<<< orphan*/  NOTE_USECONDS ; 
 long FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int,char*,char const*) ; 
 int /*<<< orphan*/  FUNC4 (int,char*,long) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,struct kevent*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct kevent*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  kqfd ; 
 long FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (char*,long) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (char const*) ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  vnode_fd ; 

__attribute__((used)) static void
FUNC13(void)
{
    const char *test_id = "kevent(EVFILT_TIMER (UPDATE), EV_ADD | EV_ONESHOT)";
    struct kevent kev;
    long elapsed;
    long start;

    FUNC11(test_id);

    FUNC12();

    /* First set the timer to 1 second */
    FUNC0(&kev, vnode_fd, EVFILT_TIMER, EV_ADD | EV_ONESHOT,
        NOTE_USECONDS, FUNC2(1), (void *)1);
    start = FUNC8();
    if (FUNC5(kqfd, &kev, 1, NULL, 0, NULL) < 0)
        FUNC3(1, "%s", test_id);

    /* Now reduce the timer to 1 ms */
    FUNC0(&kev, vnode_fd, EVFILT_TIMER, EV_ADD | EV_ONESHOT,
        NOTE_USECONDS, FUNC1(1), (void *)2);
    if (FUNC5(kqfd, &kev, 1, NULL, 0, NULL) < 0)
        FUNC3(1, "%s", test_id);

    /* Wait for the event */
    kev.flags |= EV_CLEAR;
    kev.fflags &= ~NOTE_USECONDS;
    kev.data = 1;
    FUNC6(&kev, FUNC7(kqfd));
    elapsed = FUNC8() - start;

    /* Check that the timer expired after at least 1 ms, but less than
     * 1 second. This check is to make sure that the original 1 second
     * timeout was not used.
     */
    FUNC9("timer expired after %ld us\n", elapsed);
    if (elapsed < FUNC1(1))
        FUNC4(1, "early timer expiration: %ld us", elapsed);
    if (elapsed > FUNC2(1))
        FUNC4(1, "late timer expiration: %ld us", elapsed);

    FUNC10();
}