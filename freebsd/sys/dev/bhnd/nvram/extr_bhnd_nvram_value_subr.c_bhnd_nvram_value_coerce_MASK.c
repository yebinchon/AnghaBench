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
typedef  int /*<<< orphan*/  bhnd_nvram_type ;

/* Variables and functions */
 int BHND_NVRAM_VAL_BORROW_DATA ; 
 int BHND_NVRAM_VAL_FIXED ; 
 int FUNC0 (int /*<<< orphan*/ *,void*,size_t*,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,void const*,size_t,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

int
FUNC3(const void *inp, size_t ilen, bhnd_nvram_type itype,
    void *outp, size_t *olen, bhnd_nvram_type otype)
{
	bhnd_nvram_val	val;
	int		error;

	/* Wrap input buffer in a value instance */
	error = FUNC1(&val, NULL, inp, ilen,
	    itype, BHND_NVRAM_VAL_BORROW_DATA|BHND_NVRAM_VAL_FIXED);
	if (error)
		return (error);

	/* Try to encode as requested type */
	error = FUNC0(&val, outp, olen, otype);

	/* Clean up and return error */
	FUNC2(&val);
	return (error);
}