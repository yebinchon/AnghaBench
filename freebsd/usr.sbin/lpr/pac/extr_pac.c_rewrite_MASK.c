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
struct hent {double h_feetpages; char* h_name; int h_count; struct hent* h_link; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int HSHSIZE ; 
 int /*<<< orphan*/  acctfile ; 
 int /*<<< orphan*/  errs ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,double,char*,int) ; 
 struct hent** hashtab ; 
 int /*<<< orphan*/  sumfile ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC6(void)
{
	register struct hent *hp;
	register int i;
	FILE *acctf;

	if ((acctf = FUNC3(sumfile, "w")) == NULL) {
		FUNC5("%s", sumfile);
		errs++;
		return;
	}
	for (i = 0; i < HSHSIZE; i++) {
		hp = hashtab[i];
		while (hp != NULL) {
			FUNC4(acctf, "%7.2f\t%s\t%d\n", hp->h_feetpages,
			    hp->h_name, hp->h_count);
			hp = hp->h_link;
		}
	}
	FUNC2(acctf);
	if (FUNC1(acctf)) {
		FUNC5("%s", sumfile);
		errs++;
	}
	FUNC0(acctf);
	if ((acctf = FUNC3(acctfile, "w")) == NULL)
		FUNC5("%s", acctfile);
	else
		FUNC0(acctf);
}