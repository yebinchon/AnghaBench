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
typedef  int /*<<< orphan*/ * uma_free ;
typedef  int /*<<< orphan*/ * uma_alloc ;
typedef  int /*<<< orphan*/  uintmax_t ;
typedef  int /*<<< orphan*/  u_int32_t ;
struct busdma_bufzone {int size; int /*<<< orphan*/ * umazone; int /*<<< orphan*/  name; } ;
struct busdma_bufalloc {int min_size; int /*<<< orphan*/  num_zones; struct busdma_bufzone* buf_zones; } ;
typedef  struct busdma_bufalloc* busdma_bufalloc_t ;
typedef  int bus_size_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int) ; 
 int MAX_ZONE_BUFSIZE ; 
 int /*<<< orphan*/  MIN_ZONE_BUFSIZE ; 
 int /*<<< orphan*/  M_DEVBUF ; 
 int M_WAITOK ; 
 int M_ZERO ; 
 int /*<<< orphan*/  FUNC1 (struct busdma_bufalloc*) ; 
 struct busdma_bufalloc* FUNC2 (int,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (struct busdma_bufzone*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,char*,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

busdma_bufalloc_t 
FUNC8(const char *name, bus_size_t minimum_alignment,
    uma_alloc alloc_func, uma_free free_func, u_int32_t zcreate_flags)
{
	struct busdma_bufalloc *ba;
	struct busdma_bufzone *bz;
	int i;
	bus_size_t cursize;

	ba = FUNC2(sizeof(struct busdma_bufalloc), M_DEVBUF, 
	    M_ZERO | M_WAITOK);

	ba->min_size = FUNC0(MIN_ZONE_BUFSIZE, minimum_alignment);

	/*
	 * Each uma zone is created with an alignment of size-1, meaning that
	 * the alignment is equal to the size (I.E., 64 byte buffers are aligned
	 * to 64 byte boundaries, etc).  This allows for a fast efficient test
	 * when deciding whether a pool buffer meets the constraints of a given
	 * tag used for allocation: the buffer is usable if tag->alignment <=
	 * bufzone->size.
	 */
	for (i = 0, bz = ba->buf_zones, cursize = ba->min_size;
	    i < FUNC3(ba->buf_zones) && cursize <= MAX_ZONE_BUFSIZE;
	    ++i, ++bz, cursize <<= 1) {
		FUNC4(bz->name, sizeof(bz->name), "dma %.10s %ju",
		    name, (uintmax_t)cursize);
		bz->size = cursize;
		bz->umazone = FUNC5(bz->name, bz->size,
		    NULL, NULL, NULL, NULL, bz->size - 1, zcreate_flags);
		if (bz->umazone == NULL) {
			FUNC1(ba);
			return (NULL);
		}
		if (alloc_func != NULL)
			FUNC6(bz->umazone, alloc_func);
		if (free_func != NULL)
			FUNC7(bz->umazone, free_func);
		++ba->num_zones;
	}

	return (ba);
}