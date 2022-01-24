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
typedef  int /*<<< orphan*/  bhnd_nvram_prop ;

/* Variables and functions */
 int /*<<< orphan*/  BHND_NVRAM_VAL_DYNAMIC ; 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int ENOMEM ; 
 int /*<<< orphan*/ * FUNC1 (char const*,int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,void const*,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

bhnd_nvram_prop *
FUNC4(const char *name, const void *inp, size_t ilen,
    bhnd_nvram_type itype)
{
	bhnd_nvram_prop	*prop;
	bhnd_nvram_val	*val;
	int		 error;

	/* Construct new value instance */
	error = FUNC2(&val, NULL, inp, ilen, itype,
	    BHND_NVRAM_VAL_DYNAMIC);
	if (error) {
		if (error != ENOMEM) {
			FUNC0("invalid input data; initialization "
			    "failed: %d\n", error);
		}

		return (NULL);
	}

	/* Delegate to default implementation */
	prop = FUNC1(name, val);

	/* Clean up */
	FUNC3(val);
	return (prop);
}