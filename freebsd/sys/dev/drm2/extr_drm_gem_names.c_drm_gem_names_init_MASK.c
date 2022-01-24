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
struct drm_gem_names {int /*<<< orphan*/  lock; int /*<<< orphan*/  hash_mask; int /*<<< orphan*/  names_hash; int /*<<< orphan*/  unr; } ;

/* Variables and functions */
 int /*<<< orphan*/  INT_MAX ; 
 int /*<<< orphan*/  MTX_DEF ; 
 int /*<<< orphan*/  M_GEM_NAMES ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void
FUNC3(struct drm_gem_names *names)
{

	names->unr = FUNC2(1, INT_MAX, NULL); /* XXXKIB */
	names->names_hash = FUNC0(1000 /* XXXKIB */, M_GEM_NAMES,
	    &names->hash_mask);
	FUNC1(&names->lock, "drmnames", NULL, MTX_DEF);
}