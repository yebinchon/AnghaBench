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
struct drm_gem_names {int /*<<< orphan*/  unr; int /*<<< orphan*/  lock; } ;
struct drm_gem_name {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct drm_gem_name*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MA_OWNED ; 
 int /*<<< orphan*/  M_GEM_NAMES ; 
 int /*<<< orphan*/  FUNC1 (struct drm_gem_name*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  link ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC5(struct drm_gem_names *names, struct drm_gem_name *np)
{

	FUNC3(&names->lock, MA_OWNED);
	FUNC0(np, link);
	FUNC4(&names->lock);
	FUNC2(names->unr, np->name);
	FUNC1(np, M_GEM_NAMES);
}