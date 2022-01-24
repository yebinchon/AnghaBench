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
typedef  int uint32_t ;
struct drm_gem_names {int /*<<< orphan*/  lock; int /*<<< orphan*/  unr; } ;
struct drm_gem_name {int name; void* ptr; } ;

/* Variables and functions */
 int EALREADY ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct drm_gem_name*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  M_GEM_NAMES ; 
 int /*<<< orphan*/  M_WAITOK ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_gem_name*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_gem_names*,int) ; 
 int /*<<< orphan*/  link ; 
 struct drm_gem_name* FUNC4 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

int
FUNC7(struct drm_gem_names *names, void *p, uint32_t *name)
{
	struct drm_gem_name *np;

	if (*name != 0) {
		return (-EALREADY);
	}

	np = FUNC4(sizeof(struct drm_gem_name), M_GEM_NAMES, M_WAITOK);
	FUNC5(&names->lock);
	np->name = FUNC1(names->unr);
	if (np->name == -1) {
		FUNC6(&names->lock);
		FUNC2(np, M_GEM_NAMES);
		return (-ENOMEM);
	}
	*name = np->name;
	np->ptr = p;
	FUNC0(FUNC3(names, np->name), np, link);
	FUNC6(&names->lock);
	return (0);
}