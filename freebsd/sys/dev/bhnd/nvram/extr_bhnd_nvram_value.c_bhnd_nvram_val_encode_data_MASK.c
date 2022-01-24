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
 scalar_t__ BHND_NVRAM_TYPE_DATA ; 
#define  BHND_NVRAM_TYPE_STRING 129 
#define  BHND_NVRAM_TYPE_STRING_ARRAY 128 
 int /*<<< orphan*/  BHND_NVRAM_TYPE_UINT8_ARRAY ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int FUNC1 (void const*,size_t,int /*<<< orphan*/ ,void*,size_t*,scalar_t__) ; 
 int FUNC2 (char*,void const*,size_t,int /*<<< orphan*/ ,void*,size_t*,char*) ; 

__attribute__((used)) static int
FUNC3(const void *inp, size_t ilen, bhnd_nvram_type itype,
    void *outp, size_t *olen, bhnd_nvram_type otype)
{
	FUNC0(itype == BHND_NVRAM_TYPE_DATA,
	    ("unsupported type: %d", itype));

	/* Write to output */
	switch (otype) {
	case BHND_NVRAM_TYPE_STRING:
	case BHND_NVRAM_TYPE_STRING_ARRAY:
		/* If encoding as a string, produce an EFI-style hexadecimal
		 * byte array (HF1F...) by interpreting the octet string
		 * as an array of uint8 values */
		return (FUNC2("H%[]02hhX", inp, ilen,
		    BHND_NVRAM_TYPE_UINT8_ARRAY, outp, olen, ""));

	default:
		/* Fall back on direct interpretation as an array of 8-bit
		 * integers array */
		return (FUNC1(inp, ilen,
		    BHND_NVRAM_TYPE_UINT8_ARRAY, outp, olen, otype));
	}
}