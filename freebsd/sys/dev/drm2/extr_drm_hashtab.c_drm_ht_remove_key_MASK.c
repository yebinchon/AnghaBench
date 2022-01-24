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
struct drm_open_hash {int dummy; } ;
struct drm_hash_item {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct drm_hash_item*,int /*<<< orphan*/ ) ; 
 struct drm_hash_item* FUNC1 (struct drm_open_hash*,unsigned long) ; 
 int /*<<< orphan*/  head ; 

int FUNC2(struct drm_open_hash *ht, unsigned long key)
{
	struct drm_hash_item *entry;

	entry = FUNC1(ht, key);
	if (entry) {
		FUNC0(entry, head);
		return 0;
	}
	return -EINVAL;
}