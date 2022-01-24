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
struct g_geom_alias {char const* ga_alias; } ;
struct g_geom {int /*<<< orphan*/  aliases; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct g_geom_alias*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  M_WAITOK ; 
 scalar_t__ FUNC1 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ga_next ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*) ; 
 scalar_t__ FUNC3 (char const*) ; 

void
FUNC4(struct g_geom *gp, const char *alias)
{
	struct g_geom_alias *gap;

	gap = (struct g_geom_alias *)FUNC1(
		sizeof(struct g_geom_alias) + FUNC3(alias) + 1, M_WAITOK);
	FUNC2((char *)(gap + 1), alias);
	gap->ga_alias = (const char *)(gap + 1);
	FUNC0(&gp->aliases, gap, ga_next);
}