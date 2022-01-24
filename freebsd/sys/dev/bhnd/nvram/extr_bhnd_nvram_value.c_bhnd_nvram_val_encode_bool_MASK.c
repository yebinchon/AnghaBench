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
typedef  int uint8_t ;
typedef  int /*<<< orphan*/  ival ;
typedef  scalar_t__ bhnd_nvram_type ;
typedef  scalar_t__ bhnd_nvram_bool_t ;

/* Variables and functions */
 scalar_t__ BHND_NVRAM_TYPE_BOOL ; 
#define  BHND_NVRAM_TYPE_NULL 130 
#define  BHND_NVRAM_TYPE_STRING 129 
#define  BHND_NVRAM_TYPE_STRING_ARRAY 128 
 int /*<<< orphan*/  BHND_NVRAM_TYPE_UINT8 ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int EFTYPE ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int FUNC2 (int*,int,int /*<<< orphan*/ ,void*,size_t*,scalar_t__) ; 
 int FUNC3 (void const*,size_t,scalar_t__,size_t*) ; 
 int /*<<< orphan*/  FUNC4 (void*,char const*) ; 
 int /*<<< orphan*/  FUNC5 (char const*) ; 

__attribute__((used)) static int
FUNC6(const void *inp, size_t ilen, bhnd_nvram_type itype,
    void *outp, size_t *olen, bhnd_nvram_type otype)
{
	bhnd_nvram_bool_t	bval;
	size_t			limit, nbytes, nelem;
	int			error;

	FUNC0(itype == BHND_NVRAM_TYPE_BOOL,
	    ("unsupported type: %d", itype));

	/* Determine output byte limit */
	if (outp != NULL)
		limit = *olen;
	else
		limit = 0;

	/* Must be exactly one element in input */
	if ((error = FUNC3(inp, ilen, itype, &nelem)))
		return (error);

	if (nelem != 1)
		return (EFTYPE);

	/* Fetch (and normalize) boolean value */
	bval = (*(const bhnd_nvram_bool_t *)inp != 0) ? true : false;

	/* Write to output */
	switch (otype) {
	case BHND_NVRAM_TYPE_NULL:
		/* False can be directly encoded as a zero-length NULL value */
		if (bval != false)
			return (EFTYPE);

		nbytes = 0;
		break;

	case BHND_NVRAM_TYPE_STRING:
	case BHND_NVRAM_TYPE_STRING_ARRAY: {
		/* Can encode as "true" or "false" */
		const char *str = bval ? "true" : "false";

		nbytes = FUNC5(str) + 1;
		if (limit > nbytes)
			FUNC4(outp, str);

		break;
	}

	default:
		/* If output type is an integer, we can delegate to standard
		 * integer encoding to encode as zero or one. */
		if (FUNC1(otype)) {
			uint8_t	ival = bval ? 1 : 0;

			return (FUNC2(&ival, sizeof(ival),
			    BHND_NVRAM_TYPE_UINT8, outp, olen, otype));
		}

		/* Otherwise not representable */
		return (EFTYPE);
	}

	/* Provide required length */
	*olen = nbytes;
	if (limit < *olen) {
		if (outp == NULL)
			return (0);

		return (ENOMEM);
	}

	return (0);
}