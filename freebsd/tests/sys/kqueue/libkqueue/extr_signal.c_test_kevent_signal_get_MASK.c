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
struct kevent {int data; int /*<<< orphan*/  flags; } ;
typedef  int /*<<< orphan*/  sigset_t ;

/* Variables and functions */
 int /*<<< orphan*/  EVFILT_SIGNAL ; 
 int /*<<< orphan*/  EV_ADD ; 
 int /*<<< orphan*/  EV_CLEAR ; 
 int /*<<< orphan*/  FUNC0 (struct kevent*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  SIGUSR1 ; 
 int /*<<< orphan*/  SIG_BLOCK ; 
 int /*<<< orphan*/  FUNC1 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,struct kevent*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct kevent*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  kqfd ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (char const*) ; 

void
FUNC12(void)
{
    const char *test_id = "kevent(EVFILT_SIGNAL, wait)";
    struct kevent kev;

    FUNC11(test_id);

    FUNC0(&kev, SIGUSR1, EVFILT_SIGNAL, EV_ADD, 0, 0, NULL);    
    if (FUNC3(kqfd, &kev, 1, NULL, 0, NULL) < 0)
        FUNC1(1, "%s", test_id);

    /* Block SIGUSR1, then send it to ourselves */
    sigset_t mask;
    FUNC8(&mask);
    FUNC7(&mask, SIGUSR1);
    if (FUNC9(SIG_BLOCK, &mask, NULL) == -1)
        FUNC1(1, "sigprocmask");
    if (FUNC6(FUNC2(), SIGUSR1) < 0)
        FUNC1(1, "kill");

    kev.flags |= EV_CLEAR;
    kev.data = 1;
    FUNC4(&kev, FUNC5(kqfd));

    FUNC10();
}