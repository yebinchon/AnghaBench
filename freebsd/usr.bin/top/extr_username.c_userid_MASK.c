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
struct passwd {int pw_uid; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,int) ; 
 struct passwd* FUNC1 (char*) ; 

int
FUNC2(char username_[])
{
    struct passwd *pwd;

    /* Eventually we want this to enter everything in the hash table,
       but for now we just do it simply and remember just the result.
     */

    if ((pwd = FUNC1(username_)) == NULL)
    {
	return(-1);
    }

    /* enter the result in the hash table */
    FUNC0(pwd->pw_uid, username_, 1);

    /* return our result */
    return(pwd->pw_uid);
}