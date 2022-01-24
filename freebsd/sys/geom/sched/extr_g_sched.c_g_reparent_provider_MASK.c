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
struct g_provider {struct g_geom* geom; int /*<<< orphan*/  index; int /*<<< orphan*/  private; } ;
struct g_geom {int /*<<< orphan*/  provider; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct g_provider*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct g_provider*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  provider ; 

__attribute__((used)) static inline void
FUNC2(struct g_provider *pp, struct g_geom *gp,
    struct g_provider *newpp)
{

	FUNC1(pp, provider);
	if (newpp) {
		pp->private = newpp->private;
		pp->index = newpp->index;
	}
	pp->geom = gp;
	FUNC0(&gp->provider, pp, provider);
}