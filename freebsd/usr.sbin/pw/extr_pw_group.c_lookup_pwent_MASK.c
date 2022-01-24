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
struct passwd {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  EX_NOUSER ; 
 struct passwd* FUNC0 (char const*) ; 
 scalar_t__ FUNC1 (char const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,char const*) ; 
 struct passwd* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (unsigned char) ; 

__attribute__((used)) static struct passwd *
FUNC5(const char *user)
{
	struct passwd *pwd;

	if ((pwd = FUNC0(user)) == NULL &&
	    (!FUNC4((unsigned char)*user) ||
	    (pwd = FUNC3((uid_t) FUNC1(user))) == NULL))
		FUNC2(EX_NOUSER, "user `%s' does not exist", user);

	return (pwd);
}