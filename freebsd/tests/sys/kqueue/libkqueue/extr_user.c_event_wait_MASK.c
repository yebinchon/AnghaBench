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
 int EV_CLEAR ; 
 int /*<<< orphan*/  NOTE_FFCTRLMASK ; 
 int /*<<< orphan*/  NOTE_TRIGGER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct kevent*,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct kevent*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  kqfd ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (char const*) ; 
 int /*<<< orphan*/  FUNC5 () ; 

__attribute__((used)) static void
FUNC6(void)
{
    const char *test_id = "kevent(EVFILT_USER, wait)";
    struct kevent kev;

    FUNC4(test_id);

    FUNC5();

    /* Add the event, and then trigger it */
    FUNC0(kqfd, &kev, 1, EVFILT_USER, EV_ADD | EV_CLEAR, 0, 0, NULL);    
    FUNC0(kqfd, &kev, 1, EVFILT_USER, 0, NOTE_TRIGGER, 0, NULL);    

    kev.fflags &= ~NOTE_FFCTRLMASK;
    kev.fflags &= ~NOTE_TRIGGER;
    kev.flags = EV_CLEAR;
    FUNC1(&kev, FUNC2(kqfd));

    FUNC5();

    FUNC3();
}