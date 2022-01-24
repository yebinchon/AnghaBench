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
struct drm_sg_mem {scalar_t__ vaddr; struct drm_sg_mem* busaddr; int /*<<< orphan*/  pages; } ;

/* Variables and functions */
 int /*<<< orphan*/  DRM_MEM_DRIVER ; 
 int /*<<< orphan*/  DRM_MEM_SGLISTS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct drm_sg_mem*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int /*<<< orphan*/ ) ; 

void FUNC3(struct drm_sg_mem * entry)
{
	if (entry == NULL)
		return;

	if (entry->vaddr != 0)
		FUNC2(entry->vaddr, FUNC0(entry->pages));

	FUNC1(entry->busaddr, DRM_MEM_SGLISTS);
	FUNC1(entry, DRM_MEM_DRIVER);
}