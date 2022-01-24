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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  bhnd_nvram_val ;
typedef  int /*<<< orphan*/  bhnd_nvram_type ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,size_t*,int /*<<< orphan*/ *) ; 
 void const* FUNC1 (int /*<<< orphan*/  const*,size_t,int /*<<< orphan*/ ,void const*,size_t*) ; 

const void *
FUNC2(bhnd_nvram_val *value, const void *prev,
    size_t *olen)
{
	const uint8_t	*inp;
	bhnd_nvram_type	 itype;
	size_t		 ilen;

	/* Iterate over the backing representation */
	inp = FUNC0(value, &ilen, &itype);
	return (FUNC1(inp, ilen, itype, prev, olen));
}