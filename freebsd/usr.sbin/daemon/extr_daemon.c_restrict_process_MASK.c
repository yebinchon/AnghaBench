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
struct passwd {int /*<<< orphan*/  pw_uid; } ;

/* Variables and functions */
 int /*<<< orphan*/  LOGIN_SETALL ; 
 int /*<<< orphan*/  FUNC0 (int,char*,...) ; 
 struct passwd* FUNC1 (char const*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,struct passwd*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC3(const char *user)
{
	struct passwd *pw = NULL;

	pw = FUNC1(user);
	if (pw == NULL)
		FUNC0(1, "unknown user: %s", user);

	if (FUNC2(NULL, pw, pw->pw_uid, LOGIN_SETALL) != 0)
		FUNC0(1, "failed to set user environment");
}