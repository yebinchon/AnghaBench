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
struct gctl_req {int dummy; } ;
struct g_multipath_softc {int dummy; } ;
struct g_geom {struct g_multipath_softc* softc; } ;
struct g_class {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct gctl_req*,struct g_class*,char const*) ; 
 struct g_geom* FUNC1 (struct g_class*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (struct gctl_req*,char*,...) ; 
 char* FUNC3 (struct gctl_req*,char*) ; 

__attribute__((used)) static void
FUNC4(struct gctl_req *req, struct g_class *mp)
{
	struct g_multipath_softc *sc;
	struct g_geom *gp;
	const char *mpname, *name;

	mpname = FUNC3(req, "arg0");
        if (mpname == NULL) {
                FUNC2(req, "No 'arg0' argument");
                return;
        }
	gp = FUNC1(mp, mpname);
	if (gp == NULL) {
		FUNC2(req, "Device %s not found", mpname);
		return;
	}
	sc = gp->softc;

	name = FUNC3(req, "arg1");
	if (name == NULL) {
		FUNC2(req, "No 'arg1' argument");
		return;
	}
	FUNC0(req, mp, name);
}