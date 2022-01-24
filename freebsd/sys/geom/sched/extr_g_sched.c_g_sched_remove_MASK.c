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
struct g_gsched {int dummy; } ;
struct g_geom {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct g_geom*) ; 
 int FUNC1 (struct g_geom*,struct g_gsched*) ; 
 int /*<<< orphan*/  FUNC2 (struct g_geom*) ; 

__attribute__((used)) static int
FUNC3(struct g_geom *gp, struct g_gsched *gsp)
{
	int error;

	FUNC0(gp);
	error = FUNC1(gp, gsp); /* gsp is surely non-null */
	FUNC2(gp);

	return (error);
}