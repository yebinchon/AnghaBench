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
struct g_provider {int /*<<< orphan*/  sectorsize; } ;
struct g_geom {void* spoiled; void* orphan; int /*<<< orphan*/  access; int /*<<< orphan*/  start; } ;
struct g_eli_metadata {int dummy; } ;
struct g_consumer {int acr; int /*<<< orphan*/ * provider; } ;
struct g_class {int dummy; } ;
typedef  int /*<<< orphan*/  off_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,struct g_eli_metadata*) ; 
 int FUNC1 (struct g_consumer*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct g_consumer*,struct g_provider*) ; 
 int /*<<< orphan*/  FUNC3 (struct g_consumer*) ; 
 int /*<<< orphan*/  FUNC4 (struct g_geom*) ; 
 int /*<<< orphan*/  FUNC5 (struct g_consumer*) ; 
 void* g_eli_orphan_spoil_assert ; 
 int /*<<< orphan*/  g_eli_start ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 struct g_consumer* FUNC7 (struct g_geom*) ; 
 struct g_geom* FUNC8 (struct g_class*,char*) ; 
 int /*<<< orphan*/ * FUNC9 (struct g_consumer*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  g_std_access ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 () ; 

__attribute__((used)) static int
FUNC13(struct g_class *mp, struct g_provider *pp,
    off_t offset, struct g_eli_metadata *md)
{
	struct g_geom *gp;
	struct g_consumer *cp;
	u_char *buf = NULL;
	int error;

	FUNC10();

	gp = FUNC8(mp, "eli:taste");
	gp->start = g_eli_start;
	gp->access = g_std_access;
	/*
	 * g_eli_read_metadata() is always called from the event thread.
	 * Our geom is created and destroyed in the same event, so there
	 * could be no orphan nor spoil event in the meantime.
	 */
	gp->orphan = g_eli_orphan_spoil_assert;
	gp->spoiled = g_eli_orphan_spoil_assert;
	cp = FUNC7(gp);
	error = FUNC2(cp, pp);
	if (error != 0)
		goto end;
	error = FUNC1(cp, 1, 0, 0);
	if (error != 0)
		goto end;
	FUNC12();
	buf = FUNC9(cp, offset, pp->sectorsize, &error);
	FUNC11();
	if (buf == NULL)
		goto end;
	error = FUNC0(buf, md);
	if (error != 0)
		goto end;
	/* Metadata was read and decoded successfully. */
end:
	if (buf != NULL)
		FUNC6(buf);
	if (cp->provider != NULL) {
		if (cp->acr == 1)
			FUNC1(cp, -1, 0, 0);
		FUNC5(cp);
	}
	FUNC3(cp);
	FUNC4(gp);
	return (error);
}