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
struct kevent {int flags; int /*<<< orphan*/  fflags; } ;

/* Variables and functions */
 int /*<<< orphan*/  EVFILT_USER ; 
 int EV_ADD ; 
 int EV_ONESHOT ; 
 int /*<<< orphan*/  NOTE_FFCTRLMASK ; 
 int /*<<< orphan*/  NOTE_TRIGGER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct kevent*,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct kevent*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  kqfd ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (char const*) ; 
 int /*<<< orphan*/  FUNC6 () ; 

__attribute__((used)) static void
FUNC7(void)
{
    const char *test_id = "kevent(EVFILT_USER, EV_ONESHOT)";
    struct kevent kev;

    FUNC5(test_id);

    FUNC6();

    FUNC0(kqfd, &kev, 2, EVFILT_USER, EV_ADD | EV_ONESHOT, 0, 0, NULL);

    FUNC3("  -- event 1");
    FUNC0(kqfd, &kev, 2, EVFILT_USER, 0, NOTE_TRIGGER, 0, NULL);    

    kev.flags = EV_ONESHOT;
    kev.fflags &= ~NOTE_FFCTRLMASK;
    kev.fflags &= ~NOTE_TRIGGER;
    FUNC1(&kev, FUNC2(kqfd));

    FUNC6();

    FUNC4();
}