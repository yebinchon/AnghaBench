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
struct passwd {int pw_uid; int /*<<< orphan*/  pw_name; } ;

/* Variables and functions */
 int FUNC0 (int,int /*<<< orphan*/ ,int) ; 
 struct passwd* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

int
FUNC3(int uid)
{
    struct passwd *pwd;

    /* no performance penalty for using getpwuid makes it easy */
    if ((pwd = FUNC1(uid)) != NULL)
    {
		return(FUNC0(pwd->pw_uid, pwd->pw_name, 1));
    }

    /* if we can't find the name at all, then use the uid as the name */
    return(FUNC0(uid, FUNC2(uid), 1));
}