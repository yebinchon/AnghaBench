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
typedef  int /*<<< orphan*/  uid_t ;
struct passwd {int /*<<< orphan*/  pw_uid; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 struct passwd* FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char**,int /*<<< orphan*/ ) ; 

uid_t 
FUNC4(char *username)
{
	struct passwd *pwd;
	uid_t uid;
	char *r;

	uid = FUNC3(username, &r, 0);
	if (!*r && r != username)
		return (uid);
	if ((pwd = FUNC2(username)) == NULL)
		FUNC1(1, "getpwnam failed: No such user");
	FUNC0();
	return (pwd->pw_uid);
}