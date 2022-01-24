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
typedef  int /*<<< orphan*/  bhnd_nvram_val_fmt ;
typedef  int bhnd_nvram_type ;

/* Variables and functions */
#define  BHND_NVRAM_TYPE_STRING 130 
#define  BHND_NVRAM_TYPE_UINT16 129 
#define  BHND_NVRAM_TYPE_UINT32 128 
 int EFTYPE ; 
 int /*<<< orphan*/  FUNC0 (char const*,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 size_t FUNC1 (char const**,size_t,char) ; 
 int /*<<< orphan*/  bhnd_nvram_val_bcm_string_fmt ; 

__attribute__((used)) static int
FUNC2(const bhnd_nvram_val_fmt **fmt,
    const void *inp, size_t ilen, bhnd_nvram_type itype)
{
	const char	*p;
	size_t		 plen;

	switch (itype) {
	case BHND_NVRAM_TYPE_UINT16:
	case BHND_NVRAM_TYPE_UINT32:
		return (0);

	case BHND_NVRAM_TYPE_STRING:
		/* Trim any whitespace */
		p = inp;
		plen = FUNC1(&p, ilen, '\0');

		/* If the value is not a valid integer string, delegate to the
		 * Broadcom string format */
		if (!FUNC0(p, plen, 0, NULL))
			*fmt = &bhnd_nvram_val_bcm_string_fmt;

		return (0);
	default:
		return (EFTYPE);
	}
}