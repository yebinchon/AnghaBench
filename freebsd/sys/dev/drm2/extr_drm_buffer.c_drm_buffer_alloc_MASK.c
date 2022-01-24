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
struct drm_buffer {int size; struct drm_buffer** data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int,int,...) ; 
 int /*<<< orphan*/  DRM_MEM_DRIVER ; 
 int ENOMEM ; 
 int M_WAITOK ; 
 int M_ZERO ; 
 int PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC1 (struct drm_buffer*,int /*<<< orphan*/ ) ; 
 void* FUNC2 (int,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (int,int) ; 

int FUNC4(struct drm_buffer **buf, int size)
{
	int nr_pages = size / PAGE_SIZE + 1;
	int idx;

	/* Allocating pointer table to end of structure makes drm_buffer
	 * variable sized */
	*buf = FUNC2(sizeof(struct drm_buffer) + nr_pages*sizeof(char *),
			DRM_MEM_DRIVER, M_ZERO | M_WAITOK);

	if (*buf == NULL) {
		FUNC0("Failed to allocate drm buffer object to hold"
				" %d bytes in %d pages.\n",
				size, nr_pages);
		return -ENOMEM;
	}

	(*buf)->size = size;

	for (idx = 0; idx < nr_pages; ++idx) {

		(*buf)->data[idx] =
			FUNC2(FUNC3(PAGE_SIZE, size - idx * PAGE_SIZE),
				DRM_MEM_DRIVER, M_WAITOK);


		if ((*buf)->data[idx] == NULL) {
			FUNC0("Failed to allocate %dth page for drm"
					" buffer with %d bytes and %d pages.\n",
					idx + 1, size, nr_pages);
			goto error_out;
		}

	}

	return 0;

error_out:

	/* Only last element can be null pointer so check for it first. */
	if ((*buf)->data[idx])
		FUNC1((*buf)->data[idx], DRM_MEM_DRIVER);

	for (--idx; idx >= 0; --idx)
		FUNC1((*buf)->data[idx], DRM_MEM_DRIVER);

	FUNC1(*buf, DRM_MEM_DRIVER);
	return -ENOMEM;
}