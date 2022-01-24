#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct hash {int /*<<< orphan*/  hstr; int /*<<< orphan*/  hpt; scalar_t__ hnew; struct hash* hnext; } ;
struct TYPE_2__ {struct hash* hnext; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int BUCKETS ; 
 scalar_t__ EOF ; 
 TYPE_1__* bucket ; 
 int /*<<< orphan*/  FUNC0 (int,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,scalar_t__,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  strings ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC9(void)
{
	int i;
	struct hash *hp;
	FILE *mesgwrit;
	int old = 0, new = 0;

	for (i = 0; i < BUCKETS; i++)
		for (hp = bucket[i].hnext; hp != NULL; hp = hp->hnext)
			if (hp->hnew)
				new++;
			else
				old++;
	if (new == 0 && old != 0)
		return;
	mesgwrit = FUNC3(strings, old ? "r+" : "w");
	if (mesgwrit == NULL)
		FUNC0(4, "%s", strings);
	for (i = 0; i < BUCKETS; i++)
		for (hp = bucket[i].hnext; hp != NULL; hp = hp->hnext) {
			FUNC4(hp->hnew, hp->hpt, hp->hstr);
			if (hp->hnew) {
				FUNC5(mesgwrit, hp->hpt, 0);
				FUNC7(FUNC6(hp->hstr, FUNC8(hp->hstr) + 1, 1, mesgwrit));
				if (FUNC2(mesgwrit))
					FUNC0(4, "%s", strings);
			}
		}
	if (FUNC1(mesgwrit) == EOF)
		FUNC0(4, "%s", strings);
}