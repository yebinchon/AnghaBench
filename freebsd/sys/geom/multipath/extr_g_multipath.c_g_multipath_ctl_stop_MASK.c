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
struct g_geom {int dummy; } ;
struct g_class {int dummy; } ;

/* Variables and functions */
 int EINPROGRESS ; 
 int FUNC0 (struct g_geom*) ; 
 struct g_geom* FUNC1 (struct g_class*,char const*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (struct gctl_req*,char*,...) ; 
 char* FUNC4 (struct gctl_req*,char*) ; 

__attribute__((used)) static void
FUNC5(struct gctl_req *req, struct g_class *mp)
{
	struct g_geom *gp;
	const char *name;
	int error;

	FUNC2();

	name = FUNC4(req, "arg0");
        if (name == NULL) {
                FUNC3(req, "No 'arg0' argument");
                return;
        }
	gp = FUNC1(mp, name);
	if (gp == NULL) {
		FUNC3(req, "Device %s is invalid", name);
		return;
	}
	error = FUNC0(gp);
	if (error != 0 && error != EINPROGRESS)
		FUNC3(req, "failed to stop %s (err=%d)", name, error);
}