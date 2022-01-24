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
 int /*<<< orphan*/  FUNC0 (struct kevent*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,long,int /*<<< orphan*/ *) ; 
 long FUNC1 (int) ; 
 int /*<<< orphan*/  NOTE_USECONDS ; 
 int /*<<< orphan*/  FUNC2 (int,char*,char const*) ; 
 int /*<<< orphan*/  FUNC3 (int,char*,long) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,struct kevent*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct kevent*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  kqfd ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 long FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (char*,long) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (char const*) ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  vnode_fd ; 

__attribute__((used)) static void
FUNC13(void)
{
    const char *test_id = "kevent(EVFILT_TIMER (UPDATE EXP), EV_ADD | EV_ONESHOT)";
    struct kevent kev;
    long elapsed;
    long start;

    FUNC11(test_id);

    FUNC12();

    /* Set the timer to 1ms */
    FUNC0(&kev, vnode_fd, EVFILT_TIMER, EV_ADD | EV_ONESHOT,
        NOTE_USECONDS, FUNC1(1), NULL);
    if (FUNC4(kqfd, &kev, 1, NULL, 0, NULL) < 0)
        FUNC2(1, "%s", test_id);

    /* Wait for 2 ms to give the timer plenty of time to expire. */
    FUNC7(2);
    
    /* Now re-add the timer */
    start = FUNC8();
    if (FUNC4(kqfd, &kev, 1, NULL, 0, NULL) < 0)
        FUNC2(1, "%s", test_id);

    /* Wait for the event */
    kev.flags |= EV_CLEAR;
    kev.fflags &= ~NOTE_USECONDS;
    kev.data = 1;
    FUNC5(&kev, FUNC6(kqfd));
    elapsed = FUNC8() - start;
    
    /* Check that the timer expired after at least 1 ms.  This check
     * is to make sure that the timer re-started and that the event is
     * not from the original add (and expiration) of the timer.
     */
    FUNC9("timer expired after %ld us\n", elapsed);
    if (elapsed < FUNC1(1))
        FUNC3(1, "early timer expiration: %ld us", elapsed);

    /* Make sure the re-added timer does not fire. In other words,
     * test that the event received above was the only event from the
     * add and re-add of the timer.
     */
    FUNC7(2);
    FUNC12();

    FUNC10();
}