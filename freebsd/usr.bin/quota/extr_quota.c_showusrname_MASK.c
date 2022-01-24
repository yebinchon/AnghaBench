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
 int /*<<< orphan*/  USRQUOTA ; 
 struct passwd* FUNC0 (char*) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 

__attribute__((used)) static int
FUNC3(char *name)
{
	struct passwd *pwd = FUNC0(name);

	if (pwd == NULL) {
		FUNC2("%s: unknown user", name);
		return(1);
	}
	return(FUNC1(USRQUOTA, pwd->pw_uid, name));
}