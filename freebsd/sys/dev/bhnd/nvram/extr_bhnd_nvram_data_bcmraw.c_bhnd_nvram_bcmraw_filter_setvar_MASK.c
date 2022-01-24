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
typedef  int /*<<< orphan*/  bhnd_nvram_val ;

/* Variables and functions */
 int /*<<< orphan*/  BHND_NVRAM_VAL_DYNAMIC ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (char const*) ; 
 int /*<<< orphan*/  bhnd_nvram_val_bcm_string_fmt ; 
 int FUNC1 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC3(struct bhnd_nvram_data *nv, const char *name,
    bhnd_nvram_val *value, bhnd_nvram_val **result)
{
	bhnd_nvram_val	*str;
	int		 error;

	/* Name (trimmed of any path prefix) must be valid */
	if (!FUNC2(FUNC0(name)))
		return (EINVAL);

	/* Value must be bcm-formatted string */
	error = FUNC1(&str, &bhnd_nvram_val_bcm_string_fmt,
	    value, BHND_NVRAM_VAL_DYNAMIC);
	if (error)
		return (error);

	/* Success. Transfer result ownership to the caller. */
	*result = str;
	return (0);
}