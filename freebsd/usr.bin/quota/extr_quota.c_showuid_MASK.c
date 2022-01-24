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
typedef  int /*<<< orphan*/  u_long ;
struct passwd {char* pw_name; } ;

/* Variables and functions */
 int /*<<< orphan*/  USRQUOTA ; 
 struct passwd* FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*) ; 

__attribute__((used)) static int
FUNC2(u_long uid)
{
	struct passwd *pwd = FUNC0(uid);
	const char *name;

	if (pwd == NULL)
		name = "(no account)";
	else
		name = pwd->pw_name;
	return(FUNC1(USRQUOTA, uid, name));
}