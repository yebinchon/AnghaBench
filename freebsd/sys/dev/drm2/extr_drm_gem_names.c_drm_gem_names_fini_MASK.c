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
struct drm_gem_names {int hash_mask; int /*<<< orphan*/  unr; int /*<<< orphan*/ * names_hash; int /*<<< orphan*/  lock; } ;
struct drm_gem_name {int dummy; } ;

/* Variables and functions */
 struct drm_gem_name* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  M_GEM_NAMES ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_gem_names*,struct drm_gem_name*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

void
FUNC7(struct drm_gem_names *names)
{
	struct drm_gem_name *np;
	int i;

	FUNC5(&names->lock);
	for (i = 0; i <= names->hash_mask; i++) {
		while ((np = FUNC0(&names->names_hash[i])) != NULL) {
			FUNC2(names, np);
			FUNC5(&names->lock);
		}
	}
	FUNC6(&names->lock);
	FUNC4(&names->lock);
	FUNC3(names->names_hash, M_GEM_NAMES, names->hash_mask);
	FUNC1(names->unr);
}