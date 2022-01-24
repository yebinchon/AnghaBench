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
struct entry {scalar_t__ en_nsamples; } ;
struct aggent {float ag_nsamples; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int LNBUFF ; 
 int /*<<< orphan*/  SEEK_CUR ; 
 int /*<<< orphan*/ * FUNC0 (char*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 struct entry* FUNC2 (uintptr_t) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 
 int FUNC6 (char*,char*,void**) ; 

__attribute__((used)) static void
FUNC7(FILE *fp, struct aggent *agg)
{
	char buffer[LNBUFF];
	struct entry *obj;
	int nbytes;
	void *ptr;

	while (FUNC0(buffer, LNBUFF, fp) != NULL) {
		if ((nbytes = FUNC4(buffer)) != 0) {
			FUNC1(fp, nbytes * -1, SEEK_CUR);
			break;
		}
		if (!FUNC3(buffer))
			continue;
		if (FUNC6(buffer, " %p:", &ptr) != 1)
			continue;
		obj = FUNC2((uintptr_t)ptr);
		if (obj == NULL)
			FUNC5("\t| %s", buffer);
		else
			FUNC5("%.2f%%\t| %s",
			    (float)obj->en_nsamples * 100 / agg->ag_nsamples,
			    buffer);
	}
}