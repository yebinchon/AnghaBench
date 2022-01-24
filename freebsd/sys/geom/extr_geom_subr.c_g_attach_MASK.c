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
struct g_provider {int /*<<< orphan*/  consumers; } ;
struct g_consumer {int /*<<< orphan*/  geom; struct g_provider* provider; int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  G_CF_ORPHAN ; 
 int /*<<< orphan*/  G_T_TOPOLOGY ; 
 int /*<<< orphan*/  FUNC0 (struct g_consumer*) ; 
 int /*<<< orphan*/  FUNC1 (struct g_provider*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct g_consumer*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct g_consumer*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  consumers ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,struct g_consumer*,struct g_provider*) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 

int
FUNC8(struct g_consumer *cp, struct g_provider *pp)
{
	int error;

	FUNC5();
	FUNC0(cp);
	FUNC1(pp);
	FUNC6(G_T_TOPOLOGY, "g_attach(%p, %p)", cp, pp);
	FUNC2(cp->provider == NULL, ("attach but attached"));
	cp->provider = pp;
	cp->flags &= ~G_CF_ORPHAN;
	FUNC3(&pp->consumers, cp, consumers);
	error = FUNC7(cp->geom);
	if (error) {
		FUNC4(cp, consumers);
		cp->provider = NULL;
		FUNC7(cp->geom);
	}
	return (error);
}