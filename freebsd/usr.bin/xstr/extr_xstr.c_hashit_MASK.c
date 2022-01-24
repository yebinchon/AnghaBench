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
struct hash {int hnew; scalar_t__ hpt; struct hash* hnext; int /*<<< orphan*/  hstr; } ;
typedef  scalar_t__ off_t ;

/* Variables and functions */
 struct hash* bucket ; 
 scalar_t__ FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int,char*) ; 
 int FUNC3 (char*,int /*<<< orphan*/ ) ; 
 int FUNC4 (char*) ; 
 scalar_t__ mesgpt ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static off_t
FUNC7(char *str, int new)
{
	int i;
	struct hash *hp, *hp0;

	hp = hp0 = &bucket[FUNC4(str) & 0177];
	while (hp->hnext) {
		hp = hp->hnext;
		i = FUNC3(str, hp->hstr);
		if (i >= 0)
			return (hp->hpt + i);
	}
	if ((hp = (struct hash *) FUNC0(1, sizeof (*hp))) == NULL)
		FUNC2(8, "calloc");
	hp->hpt = mesgpt;
	if (!(hp->hstr = FUNC5(str)))
		FUNC1(1, NULL);
	mesgpt += FUNC6(hp->hstr) + 1;
	hp->hnext = hp0->hnext;
	hp->hnew = new;
	hp0->hnext = hp;
	return (hp->hpt);
}