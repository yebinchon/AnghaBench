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
struct message {int dummy; } ;

/* Variables and functions */
 char* FUNC0 (char*,struct message*) ; 
 struct message* message ; 
 int /*<<< orphan*/ * FUNC1 (char*,char*) ; 
 char** to_fields ; 

__attribute__((used)) static int
FUNC2(char *str, int mesg)
{
	struct message *mp;
	char *cp, **to;

	str++;

	/* null string matches nothing instead of everything */
	if (*str == '\0')
		return (0);

	mp = &message[mesg - 1];

	for (to = to_fields; *to != NULL; to++) {
		cp = FUNC0(*to, mp);
		if (cp != NULL && FUNC1(cp, str) != NULL)
			return (1);
	}
	return (0);
}