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
typedef  int /*<<< orphan*/  sval ;
typedef  int ssize_t ;
typedef  scalar_t__ int64_t ;
typedef  int /*<<< orphan*/  bhnd_nvram_val ;
typedef  scalar_t__ bhnd_nvram_type ;

/* Variables and functions */
 scalar_t__ BHND_NVRAM_TYPE_INT64 ; 
 scalar_t__ BHND_NVRAM_TYPE_STRING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 int FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *,void const*,size_t,void*,size_t*,scalar_t__) ; 
 int FUNC6 (void const*,size_t,scalar_t__,scalar_t__*,size_t*,scalar_t__) ; 
 int FUNC7 (char*,void const*,size_t,scalar_t__,void*,size_t*,int) ; 

__attribute__((used)) static int
FUNC8(bhnd_nvram_val *value, const void *inp,
    size_t ilen, void *outp, size_t *olen, bhnd_nvram_type otype)
{
	bhnd_nvram_type	itype;
	ssize_t		width;
	int		error;

	itype = FUNC4(value);
	FUNC0(FUNC1(itype), ("invalid type"));

	/* If not encoding as a string, perform generic value encoding */
	if (otype != BHND_NVRAM_TYPE_STRING)
		return (FUNC5(value, inp, ilen,
		    outp, olen, otype));

	/* If the value is a signed, negative value, encode as a decimal
	 * string */
	if (FUNC2(itype)) {
		int64_t		sval;
		size_t		slen;
		bhnd_nvram_type	stype;

		stype = BHND_NVRAM_TYPE_INT64;
		slen = sizeof(sval);

		/* Fetch 64-bit signed representation */
		error = FUNC6(inp, ilen, itype, &sval, &slen,
		    stype);
		if (error)
			return (error);

		/* Decimal encoding required? */
		if (sval < 0)
			return (FUNC7("%I64d", &sval, slen,
			    stype, outp, olen, otype));
	}

	/*
	 * Encode the value as a hex string.
	 * 
	 * Most producers of Broadcom NVRAM values zero-pad hex values out to
	 * their native width (width * two hex characters), and we do the same
	 * for compatibility
	 */
	width = FUNC3(itype) * 2;
	return (FUNC7("0x%0*I64X", inp, ilen, itype,
	    outp, olen, width));
}