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
 int FUNC0 (char*,char) ; 
 int /*<<< orphan*/  FUNC1 (struct message*,int) ; 
 char* FUNC2 (int /*<<< orphan*/ ) ; 
 char* FUNC3 (char*,char) ; 

char *
FUNC4(struct message *mp, int reptype)
{
	char *cp, *cp2;

	cp = FUNC2(FUNC1(mp, reptype));
	if (reptype != 0 || FUNC0(cp, '!') < 2)
		return (cp);
	cp2 = FUNC3(cp, '!');
	cp2--;
	while (cp2 > cp && *cp2 != '!')
		cp2--;
	if (*cp2 == '!')
		return (cp2 + 1);
	return (cp);
}