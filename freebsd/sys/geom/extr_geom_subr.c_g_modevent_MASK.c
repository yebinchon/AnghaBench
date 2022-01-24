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
struct g_hh00 {int post; int error; struct g_class* mp; } ;
struct g_class {scalar_t__ version; char* name; int /*<<< orphan*/  geom; } ;
typedef  int /*<<< orphan*/  module_t ;

/* Variables and functions */
 int EINVAL ; 
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  G_T_TOPOLOGY ; 
 scalar_t__ G_VERSION ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
#define  MOD_LOAD 129 
#define  MOD_UNLOAD 128 
 int M_WAITOK ; 
 int M_ZERO ; 
 int /*<<< orphan*/  cold ; 
 int /*<<< orphan*/  FUNC2 (struct g_hh00*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  g_load_class ; 
 struct g_hh00* FUNC4 (int,int) ; 
 int FUNC5 (int /*<<< orphan*/ ,struct g_hh00*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,char*) ; 
 int FUNC7 (struct g_class*) ; 
 int FUNC8 (int /*<<< orphan*/ ,struct g_hh00*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (char*,char*,scalar_t__) ; 

int
FUNC10(module_t mod, int type, void *data)
{
	struct g_hh00 *hh;
	int error;
	static int g_ignition;
	struct g_class *mp;

	mp = data;
	if (mp->version != G_VERSION) {
		FUNC9("GEOM class %s has Wrong version %x\n",
		    mp->name, mp->version);
		return (EINVAL);
	}
	if (!g_ignition) {
		g_ignition++;
		FUNC3();
	}
	error = EOPNOTSUPP;
	switch (type) {
	case MOD_LOAD:
		FUNC6(G_T_TOPOLOGY, "g_modevent(%s, LOAD)", mp->name);
		hh = FUNC4(sizeof *hh, M_WAITOK | M_ZERO);
		hh->mp = mp;
		/*
		 * Once the system is not cold, MOD_LOAD calls will be
		 * from the userland and the g_event thread will be able
		 * to acknowledge their completion.
		 */
		if (cold) {
			hh->post = 1;
			error = FUNC5(g_load_class, hh, M_WAITOK, NULL);
		} else {
			error = FUNC8(g_load_class, hh, M_WAITOK,
			    NULL);
			if (error == 0)
				error = hh->error;
			FUNC2(hh);
		}
		break;
	case MOD_UNLOAD:
		FUNC6(G_T_TOPOLOGY, "g_modevent(%s, UNLOAD)", mp->name);
		error = FUNC7(mp);
		if (error == 0) {
			FUNC0(FUNC1(&mp->geom),
			    ("Unloaded class (%s) still has geom", mp->name));
		}
		break;
	}
	return (error);
}