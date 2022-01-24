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
 int /*<<< orphan*/  EVFILT_USER ; 
 int /*<<< orphan*/  EV_ADD ; 
 int /*<<< orphan*/  EV_DELETE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct kevent*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  kqfd ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (char const*) ; 
 int /*<<< orphan*/  FUNC3 () ; 

__attribute__((used)) static void
FUNC4(void)
{
    const char *test_id = "kevent(EVFILT_USER, EV_ADD and EV_DELETE)";
    struct kevent kev;

    FUNC2(test_id);

    FUNC0(kqfd, &kev, 1, EVFILT_USER, EV_ADD, 0, 0, NULL);
    FUNC3();

    FUNC0(kqfd, &kev, 1, EVFILT_USER, EV_DELETE, 0, 0, NULL);
    FUNC3();

    FUNC1();
}