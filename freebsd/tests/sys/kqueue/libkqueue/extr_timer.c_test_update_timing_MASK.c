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
 int MAX_SLEEP ; 
 int MIN_SLEEP ; 
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
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (char const*) ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 (int) ; 
 int /*<<< orphan*/  vnode_fd ; 

__attribute__((used)) static void
FUNC14(void)
{
#define	MIN_SLEEP 500
#define	MAX_SLEEP 1500
    const char *test_id = "kevent(EVFILT_TIMER (UPDATE TIMING), EV_ADD | EV_ONESHOT)";
    struct kevent kev;
    int iteration;
    int sleeptime;
    long elapsed;
    long start;
    long stop;

    FUNC10(test_id);

    FUNC11();

    /* Re-try the update tests with a variety of delays between the
     * original timer activation and the update of the timer. The goal
     * is to show that in all cases the only timer event that is
     * received is from the update and not the original timer add.
     */
    for (sleeptime = MIN_SLEEP, iteration = 1;
         sleeptime < MAX_SLEEP;
         ++sleeptime, ++iteration) {

        /* First set the timer to 1 ms */
        FUNC0(&kev, vnode_fd, EVFILT_TIMER, EV_ADD | EV_ONESHOT,
            NOTE_USECONDS, FUNC1(1), NULL);
        if (FUNC4(kqfd, &kev, 1, NULL, 0, NULL) < 0)
            FUNC2(1, "%s", test_id);

        /* Delay; the delay ranges from less than to greater than the
         * timer period.
         */
        FUNC13(sleeptime);
    
        /* Now re-add the timer with the same parameters */
        start = FUNC8();
        if (FUNC4(kqfd, &kev, 1, NULL, 0, NULL) < 0)
            FUNC2(1, "%s", test_id);

        /* Wait for the event */
        kev.flags |= EV_CLEAR;
        kev.fflags &= ~NOTE_USECONDS;
        kev.data = 1;
        FUNC5(&kev, FUNC6(kqfd));
        stop = FUNC8();
        elapsed = stop - start;

        /* Check that the timer expired after at least 1 ms. This
         * check is to make sure that the timer re-started and that
         * the event is not from the original add of the timer.
         */
        if (elapsed < FUNC1(1))
            FUNC3(1, "early timer expiration: %ld us", elapsed);

        /* Make sure the re-added timer does not fire. In other words,
         * test that the event received above was the only event from
         * the add and re-add of the timer.
         */
        FUNC7(2);
        FUNC12();
    }

    FUNC9();
}