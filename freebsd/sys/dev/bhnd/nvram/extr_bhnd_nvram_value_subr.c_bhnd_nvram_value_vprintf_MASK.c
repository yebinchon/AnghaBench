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
typedef  int /*<<< orphan*/  va_list ;
typedef  int /*<<< orphan*/  bhnd_nvram_val ;
typedef  int /*<<< orphan*/  bhnd_nvram_type ;

/* Variables and functions */
 int /*<<< orphan*/  BHND_NVRAM_VAL_BORROW_DATA ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,void const*,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *,char const*,char*,size_t*,int /*<<< orphan*/ ) ; 

int
FUNC3(const char *fmt, const void *inp, size_t ilen,
    bhnd_nvram_type itype, char *outp, size_t *olen, va_list ap)
{
	bhnd_nvram_val	val;
	int		error;

	/* Map input buffer as a value instance */
	error = FUNC0(&val, NULL, inp, ilen, itype,
	    BHND_NVRAM_VAL_BORROW_DATA);
	if (error)
		return (error);

	/* Attempt to format the value */
	error = FUNC2(&val, fmt, outp, olen, ap);

	/* Clean up */
	FUNC1(&val);
	return (error);
}