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
struct bhnd_nvram_data {int dummy; } ;
typedef  int /*<<< orphan*/  bhnd_nvram_val_fmt ;
typedef  int /*<<< orphan*/  bhnd_nvram_val ;
typedef  int /*<<< orphan*/  bhnd_nvram_type ;

/* Variables and functions */
 int BHND_NVRAM_DATA_CAP_READ_PTR ; 
 int /*<<< orphan*/  BHND_NVRAM_VAL_BORROW_DATA ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int EINVAL ; 
 int FUNC1 (struct bhnd_nvram_data*) ; 
 void* FUNC2 (struct bhnd_nvram_data*,void*,size_t*,int /*<<< orphan*/ *,int /*<<< orphan*/  const**) ; 
 int FUNC3 (int /*<<< orphan*/ *,void*,size_t*,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,void const*,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

int
FUNC6(struct bhnd_nvram_data *nv, void *cookiep,
    void *outp, size_t *olen, bhnd_nvram_type otype)
{
	bhnd_nvram_val			 val;
	const bhnd_nvram_val_fmt	*fmt;
	const void			*vptr;
	bhnd_nvram_type			 vtype;
	size_t				 vlen;
	int				 error;

	FUNC0(FUNC1(nv) & BHND_NVRAM_DATA_CAP_READ_PTR,
	    ("instance does not advertise READ_PTR support"));

	/* Fetch variable data and value format*/
	vptr = FUNC2(nv, cookiep, &vlen, &vtype,
	    &fmt);
	if (vptr == NULL)
		return (EINVAL);

	/* Attempt value coercion */
	error = FUNC4(&val, fmt, vptr, vlen, vtype,
	    BHND_NVRAM_VAL_BORROW_DATA);
	if (error)
		return (error);

	error = FUNC3(&val, outp, olen, otype);

	/* Clean up */
	FUNC5(&val);
	return (error);
}