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
struct bhnd_nvram_store {int dummy; } ;
typedef  int /*<<< orphan*/  bhnd_nvram_val ;
typedef  int /*<<< orphan*/  bhnd_nvram_type ;

/* Variables and functions */
 int BHND_NVRAM_VAL_BORROW_DATA ; 
 int BHND_NVRAM_VAL_FIXED ; 
 int /*<<< orphan*/  FUNC0 (struct bhnd_nvram_store*) ; 
 int /*<<< orphan*/  FUNC1 (struct bhnd_nvram_store*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 
 int EINVAL ; 
 int FUNC3 (struct bhnd_nvram_store*,char const*,int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,void const*,size_t,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

int
FUNC6(struct bhnd_nvram_store *sc, const char *name,
    const void *inp, size_t ilen, bhnd_nvram_type itype)
{
	bhnd_nvram_val	val;
	int		error;

	error = FUNC4(&val, NULL, inp, ilen, itype,
	    BHND_NVRAM_VAL_FIXED|BHND_NVRAM_VAL_BORROW_DATA);
	if (error) {
		FUNC2("error initializing value: %d\n", error);
		return (EINVAL);
	}

	FUNC0(sc);
	error = FUNC3(sc, name, &val);
	FUNC1(sc);

	FUNC5(&val);

	return (error);
}