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
typedef  void u_char ;
typedef  int /*<<< orphan*/  bhnd_nvram_type ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 size_t FUNC3 (void const*,size_t,int /*<<< orphan*/ ,int) ; 

const void *
FUNC4(const void *inp, size_t ilen, bhnd_nvram_type itype,
    const void *prev, size_t *olen)
{
	const u_char	*next;
	size_t		 offset;

	/* Handle first element */
	if (prev == NULL) {
		/* Zero-length array? */
		if (ilen == 0)
			return (NULL);

		*olen = FUNC3(inp, ilen, itype, 1);
		return (inp);
	}

	/* Advance to next element */
	FUNC0(prev >= (const void *)inp, ("invalid cookiep"));
	next = (const u_char *)prev + *olen;
	offset = (size_t)(next - (const u_char *)inp);

	if (offset >= ilen) {
		/* Hit end of the array */
		return (NULL);
	}

	/* Determine element size */
	*olen = FUNC3(next, ilen - offset, itype, 1);
	if (ilen - offset < *olen) {
		FUNC1("short element of type %s -- misaligned "
		    "representation", FUNC2(itype));
		return (NULL);
	}

	return (next);
}