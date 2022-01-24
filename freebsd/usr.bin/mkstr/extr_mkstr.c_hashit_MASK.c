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
struct hash {long hval; unsigned int hpt; struct hash* hnext; } ;

/* Variables and functions */
 long NBUCKETS ; 
 struct hash** bucket ; 
 scalar_t__ FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,long,int /*<<< orphan*/ ) ; 
 unsigned int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mesgread ; 
 int /*<<< orphan*/  mesgwrite ; 
 scalar_t__ FUNC7 (char*,char*) ; 
 int FUNC8 (char*) ; 

unsigned
FUNC9(char *str, int really, unsigned fakept)
{
	int i;
	struct hash *hp;
	char buf[512];
	long hashval = 0;
	char *cp;

	if (really)
		FUNC2(mesgwrite);
	for (cp = str; *cp;)
		hashval = (hashval << 1) + *cp++;
	i = hashval % NBUCKETS;
	if (i < 0)
		i += NBUCKETS;
	if (really != 0)
		for (hp = bucket[i]; hp != 0; hp = hp->hnext)
		if (hp->hval == hashval) {
			FUNC4(mesgread, (long) hp->hpt, 0);
			FUNC3(buf, sizeof buf, mesgread);
/*
			fprintf(stderr, "Got (from %d) %s\n", hp->hpt, buf);
*/
			if (FUNC7(buf, str) == 0)
				break;
		}
	if (!really || hp == 0) {
		hp = (struct hash *) FUNC0(1, sizeof *hp);
		if (hp == NULL)
			FUNC1(1, NULL);
		hp->hnext = bucket[i];
		hp->hval = hashval;
		hp->hpt = really ? FUNC5(mesgwrite) : fakept;
		if (really) {
			FUNC6(str, sizeof (char), FUNC8(str) + 1, mesgwrite);
			FUNC6("\n", sizeof (char), 1, mesgwrite);
		}
		bucket[i] = hp;
	}
/*
	fprintf(stderr, "%s hashed to %ld at %d\n", str, hp->hval, hp->hpt);
*/
	return (hp->hpt);
}