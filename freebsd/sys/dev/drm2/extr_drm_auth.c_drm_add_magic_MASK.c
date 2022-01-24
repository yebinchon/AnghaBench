#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct drm_master {int /*<<< orphan*/  magicfree; int /*<<< orphan*/  magiclist; TYPE_1__* minor; } ;
struct TYPE_4__ {unsigned long key; } ;
struct drm_magic_entry {int /*<<< orphan*/  head; TYPE_2__ hash_item; struct drm_file* priv; } ;
struct drm_file {int dummy; } ;
struct drm_device {int dummy; } ;
typedef  scalar_t__ drm_magic_t ;
struct TYPE_3__ {struct drm_device* dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct drm_device*) ; 
 int /*<<< orphan*/  DRM_MEM_MAGIC ; 
 int /*<<< orphan*/  FUNC2 (struct drm_device*) ; 
 int ENOMEM ; 
 int M_NOWAIT ; 
 int M_ZERO ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct drm_magic_entry* FUNC5 (int,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC6(struct drm_master *master, struct drm_file *priv,
			 drm_magic_t magic)
{
	struct drm_magic_entry *entry;
	struct drm_device *dev = master->minor->dev;
	FUNC0("%d\n", magic);

	entry = FUNC5(sizeof(*entry), DRM_MEM_MAGIC, M_ZERO | M_NOWAIT);
	if (!entry)
		return -ENOMEM;
	entry->priv = priv;
	entry->hash_item.key = (unsigned long)magic;
	FUNC1(dev);
	FUNC3(&master->magiclist, &entry->hash_item);
	FUNC4(&entry->head, &master->magicfree);
	FUNC2(dev);

	return 0;
}