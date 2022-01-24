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
struct kevent {int /*<<< orphan*/  fflags; int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  EVFILT_USER ; 
 int /*<<< orphan*/  EV_ADD ; 
 int /*<<< orphan*/  EV_CLEAR ; 
 int /*<<< orphan*/  EV_DISABLE ; 
 int /*<<< orphan*/  EV_ENABLE ; 
 int /*<<< orphan*/  NOTE_FFCTRLMASK ; 
 int /*<<< orphan*/  NOTE_TRIGGER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct kevent*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct kevent*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  kqfd ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (char const*) ; 
 int /*<<< orphan*/  FUNC5 () ; 

__attribute__((used)) static void
FUNC6(void)
{
    const char *test_id = "kevent(EVFILT_USER, EV_DISABLE and EV_ENABLE)";
    struct kevent kev;

    FUNC4(test_id);

    FUNC5();

    FUNC0(kqfd, &kev, 1, EVFILT_USER, EV_ADD, 0, 0, NULL); 
    FUNC0(kqfd, &kev, 1, EVFILT_USER, EV_DISABLE, 0, 0, NULL); 

    /* Trigger the event, but since it is disabled, nothing will happen. */
    FUNC0(kqfd, &kev, 1, EVFILT_USER, 0, NOTE_TRIGGER, 0, NULL); 
    FUNC5();

    FUNC0(kqfd, &kev, 1, EVFILT_USER, EV_ENABLE, 0, 0, NULL); 
    FUNC0(kqfd, &kev, 1, EVFILT_USER, 0, NOTE_TRIGGER, 0, NULL); 

    kev.flags = EV_CLEAR;
    kev.fflags &= ~NOTE_FFCTRLMASK;
    kev.fflags &= ~NOTE_TRIGGER;
    FUNC1(&kev, FUNC2(kqfd));

    FUNC3();
}