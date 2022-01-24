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
struct g_provider {struct g_geom* geom; } ;
struct g_geom {int /*<<< orphan*/  consumer; } ;
struct g_consumer {int dummy; } ;

/* Variables and functions */
 struct g_consumer* FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (struct g_consumer*,int,int,int) ; 

__attribute__((used)) static int
FUNC2(struct g_provider *pp, int dr, int dw, int de)
{
	struct g_geom *gp;
	struct g_consumer *cp;
	int error;

	gp = pp->geom;
	cp = FUNC0(&gp->consumer);
	error = FUNC1(cp, dr, dw, de);

	return (error);
}