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
typedef  int /*<<< orphan*/  uintmax_t ;
struct kevent {scalar_t__* ext; int /*<<< orphan*/  udata; scalar_t__ data; int /*<<< orphan*/  filter; scalar_t__ ident; } ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char* FUNC1 (struct kevent*) ; 
 char* FUNC2 (struct kevent*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char* FUNC4 (char*) ; 

char *
FUNC5(struct kevent *kev)
{
    char buf[512];
    char *flags_str = FUNC2(kev);
    char *fflags_str = FUNC1(kev);

    FUNC3(&buf[0], sizeof(buf), 
            "[ident=%ju, filter=%d, %s, %s, data=%jd, udata=%p, "
            "ext=[%jx %jx %jx %jx]",
            (uintmax_t) kev->ident,
            kev->filter,
            flags_str,
            fflags_str,
            (uintmax_t)kev->data,
            kev->udata,
            (uintmax_t)kev->ext[0],
            (uintmax_t)kev->ext[1],
            (uintmax_t)kev->ext[2],
            (uintmax_t)kev->ext[3]);

    FUNC0(flags_str);
    FUNC0(fflags_str);
    
    return (FUNC4(buf));
}