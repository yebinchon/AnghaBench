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
 struct passwd* FUNC0 (char const*) ; 
 int /*<<< orphan*/  FUNC1 (char const*,char*) ; 
 int /*<<< orphan*/  uid ; 

__attribute__((used)) static void
FUNC2(const char *s)
{
	struct passwd *pw;

	if (*s == '\0')			/* Argument was "[:.]gid". */
		return;
	uid = ((pw = FUNC0(s)) != NULL) ? pw->pw_uid : FUNC1(s, "user");
}