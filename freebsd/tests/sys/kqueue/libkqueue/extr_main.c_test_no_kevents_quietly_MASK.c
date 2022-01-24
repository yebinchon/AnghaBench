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
typedef  int /*<<< orphan*/  timeo ;
struct timespec {int dummy; } ;
struct kevent {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct kevent*,int,struct timespec*) ; 
 char* FUNC3 (struct kevent*) ; 
 int /*<<< orphan*/  kqfd ; 
 int /*<<< orphan*/  FUNC4 (struct timespec*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 

void 
FUNC6(void)
{
    int nfds;
    struct timespec timeo;
    struct kevent kev;
    char *kev_str;

    FUNC4(&timeo, 0, sizeof(timeo));
    nfds = FUNC2(kqfd, NULL, 0, &kev, 1, &timeo);
    if (nfds != 0) {
        FUNC5("\nUnexpected event:");
        kev_str = FUNC3(&kev);
        FUNC5(kev_str);
        FUNC1(kev_str);
        FUNC0(1, "%d event(s) pending, but none expected:", nfds);
    }
}