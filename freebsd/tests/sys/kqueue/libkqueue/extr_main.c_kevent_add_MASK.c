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
typedef  int /*<<< orphan*/  u_short ;
typedef  int /*<<< orphan*/  u_int ;
struct kevent {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct kevent*,uintptr_t,short,int /*<<< orphan*/ ,int /*<<< orphan*/ ,intptr_t,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 scalar_t__ FUNC3 (int,struct kevent*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 char* FUNC4 (struct kevent*) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

void
FUNC7(int kqfd, struct kevent *kev, 
        uintptr_t ident,
        short     filter,
        u_short   flags,
        u_int     fflags,
        intptr_t  data,
        void      *udata)
{
    char *kev_str;
    
    FUNC0(kev, ident, filter, flags, fflags, data, NULL);    
    if (FUNC3(kqfd, kev, 1, NULL, 0, NULL) < 0) {
        kev_str = FUNC4(kev);
        FUNC5("Unable to add the following kevent:\n%s\n",
                kev_str);
        FUNC2(kev_str);
        FUNC1(1, "kevent(): %s", FUNC6(errno));
    }
}