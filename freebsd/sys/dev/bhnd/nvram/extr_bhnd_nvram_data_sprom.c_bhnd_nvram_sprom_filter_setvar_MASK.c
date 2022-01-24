#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct bhnd_nvram_vardefn {int /*<<< orphan*/  fmt; } ;
struct bhnd_nvram_sprom {int /*<<< orphan*/  state; } ;
struct bhnd_nvram_data {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  vid; } ;
typedef  TYPE_1__ bhnd_sprom_opcode_idx_entry ;
typedef  int /*<<< orphan*/  bhnd_nvram_val ;

/* Variables and functions */
 int /*<<< orphan*/  BHND_NVRAM_VAL_DYNAMIC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int EINVAL ; 
 int ENOENT ; 
 struct bhnd_nvram_vardefn* FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (char const*) ; 
 TYPE_1__* FUNC6 (int /*<<< orphan*/ *,char const*) ; 

__attribute__((used)) static int
FUNC7(struct bhnd_nvram_data *nv, const char *name,
    bhnd_nvram_val *value, bhnd_nvram_val **result)
{
	struct bhnd_nvram_sprom		*sp;
	const struct bhnd_nvram_vardefn	*var;
	bhnd_sprom_opcode_idx_entry	*entry;
	bhnd_nvram_val			*spval;
	int				 error;

	sp = (struct bhnd_nvram_sprom *)nv;

	/* Is this an externally immutable variable name? */
	if (FUNC5(name))
		return (EINVAL);

	/* Variable must be defined in our SPROM layout */
	if ((entry = FUNC6(&sp->state, name)) == NULL)
		return (ENOENT);

	var = FUNC1(entry->vid);
	FUNC0(var != NULL, ("missing variable definition"));

	/* Value must be convertible to the native variable type */
	error = FUNC3(&spval, var->fmt, value,
	    BHND_NVRAM_VAL_DYNAMIC);
	if (error)
		return (error);

	/* Value must be encodeable by our SPROM layout */
	error = FUNC2(&sp->state, entry, spval, NULL);
	if (error) {
		FUNC4(spval);
		return (error);
	}

	/* Success. Transfer our ownership of the converted value to the
	 * caller */
	*result = spval;
	return (0);
}