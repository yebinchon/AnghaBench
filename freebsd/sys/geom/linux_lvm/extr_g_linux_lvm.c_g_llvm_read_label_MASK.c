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
typedef  int /*<<< orphan*/  u_char ;
struct g_provider {int sectorsize; int /*<<< orphan*/  name; } ;
struct g_llvm_label {int dummy; } ;
struct g_consumer {struct g_provider* provider; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,int /*<<< orphan*/ ,int) ; 
 int FUNC1 (struct g_consumer*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (struct g_consumer*,int /*<<< orphan*/ ,int,int*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int FUNC7 (int /*<<< orphan*/ *,struct g_llvm_label*,int) ; 

int
FUNC8(struct g_consumer *cp, struct g_llvm_label *ll)
{
	struct g_provider *pp;
	u_char *buf;
	int i, error = 0;

	FUNC4();

	/* The LVM label is stored on the first four sectors */
	error = FUNC1(cp, 1, 0, 0);
	if (error != 0)
		return (error);
	pp = cp->provider;
	FUNC6();
	buf = FUNC3(cp, 0, pp->sectorsize * 4, &error);
	FUNC5();
	FUNC1(cp, -1, 0, 0);
	if (buf == NULL) {
		FUNC0(1, "Cannot read metadata from %s (error=%d)",
		    pp->name, error);
		return (error);
	}

	/* Search the four sectors for the LVM label. */
	for (i = 0; i < 4; i++) {
		error = FUNC7(&buf[i * pp->sectorsize], ll, i);
		if (error == 0)
			break;	/* found it */
	}
	FUNC2(buf);
	return (error);
}