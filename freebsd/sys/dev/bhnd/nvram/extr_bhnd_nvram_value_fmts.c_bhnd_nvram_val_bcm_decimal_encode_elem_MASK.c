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
typedef  int /*<<< orphan*/  bhnd_nvram_val ;
typedef  scalar_t__ bhnd_nvram_type ;

/* Variables and functions */
 scalar_t__ BHND_NVRAM_TYPE_STRING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *,void const*,size_t,void*,size_t*,scalar_t__) ; 
 int FUNC5 (char const*,void const*,size_t,scalar_t__,void*,size_t*) ; 

__attribute__((used)) static int
FUNC6(bhnd_nvram_val *value, const void *inp,
    size_t ilen, void *outp, size_t *olen, bhnd_nvram_type otype)
{
	const char	*sfmt;
	bhnd_nvram_type	 itype;

	itype = FUNC3(value);
	FUNC0(FUNC1(itype), ("invalid type"));

	/* If not encoding as a string, perform generic value encoding */
	if (otype != BHND_NVRAM_TYPE_STRING)
		return (FUNC4(value, inp, ilen,
		    outp, olen, otype));

	sfmt = FUNC2(itype) ? "%I64d" : "%I64u";
	return (FUNC5(sfmt, inp, ilen, itype, outp, olen));
}