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
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (struct gctl_req*,char*) ; 
 struct g_geom* FUNC2 (struct gctl_req*,struct g_class*,char*) ; 

__attribute__((used)) static void
FUNC3(struct gctl_req *req, struct g_class *mp, const char *verb)
{
	struct g_geom *gp;

	FUNC0();
	gp = FUNC2(req, mp, "geom");
	if (gp == NULL)
		return;
	FUNC1(req, "Unknown verb");
}