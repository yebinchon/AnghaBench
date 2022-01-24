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
typedef  scalar_t__ bhnd_nvram_type ;

/* Variables and functions */
 scalar_t__ BHND_NVRAM_TYPE_NULL ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int EFAULT ; 
 int EFTYPE ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 size_t FUNC2 (scalar_t__) ; 
 size_t FUNC3 (scalar_t__) ; 

int
FUNC4(const void *inp, size_t ilen,
    bhnd_nvram_type itype)
{
	size_t align, width;

	/* As a special case, NULL values have no alignment, but must
	 * always have a length of zero */
	if (itype == BHND_NVRAM_TYPE_NULL) {
		if (ilen != 0)
			return (EFAULT);

		return (0);
	}

	/* Check pointer alignment against the required host alignment */
	align = FUNC2(itype);
	FUNC0(align != 0, ("invalid zero alignment"));
	if ((uintptr_t)inp % align != 0)
		return (EFAULT);

	/* If type is not fixed width, nothing else to check */
	width = FUNC3(itype);
	if (width == 0)
		return (0);

	/* Length must be aligned to the element width */
	if (ilen % width != 0)
		return (EFAULT);

	/* If the type is not an array type, the length must be equal to the
	 * size of a single element of @p type. */
	if (!FUNC1(itype) && ilen != width)
			return (EFTYPE);

	return (0);
}