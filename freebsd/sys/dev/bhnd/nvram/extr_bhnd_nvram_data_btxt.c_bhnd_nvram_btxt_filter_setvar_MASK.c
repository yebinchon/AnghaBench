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
typedef  scalar_t__ bhnd_nvram_type ;

/* Variables and functions */
 scalar_t__ BHND_NVRAM_TYPE_STRING ; 
 int /*<<< orphan*/  BHND_NVRAM_VAL_DYNAMIC ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const) ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC2 (char const*) ; 
 int /*<<< orphan*/  bhnd_nvram_val_bcm_string_fmt ; 
 char* FUNC3 (int /*<<< orphan*/ *,size_t*,scalar_t__*) ; 
 int FUNC4 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC7(struct bhnd_nvram_data *nv, const char *name,
    bhnd_nvram_val *value, bhnd_nvram_val **result)
{
	bhnd_nvram_val	*str;
	const char	*inp;
	bhnd_nvram_type	 itype;
	size_t		 ilen;
	int		 error;

	/* Name (trimmed of any path prefix) must be valid */
	if (!FUNC6(FUNC2(name)))
		return (EINVAL);

	/* Value must be bcm-formatted string */
	error = FUNC4(&str, &bhnd_nvram_val_bcm_string_fmt,
	    value, BHND_NVRAM_VAL_DYNAMIC);
	if (error)
		return (error);

	/* Value string must not contain our record delimiter character ('\n'),
	 * or our comment character ('#') */
	inp = FUNC3(str, &ilen, &itype);
	FUNC0(itype == BHND_NVRAM_TYPE_STRING, ("non-string value"));
	for (size_t i = 0; i < ilen; i++) {
		switch (inp[i]) {
		case '\n':
		case '#':
			FUNC1("invalid character (%#hhx) in value\n",
			    inp[i]);
			FUNC5(str);
			return (EINVAL);
		}
	}

	/* Success. Transfer result ownership to the caller. */
	*result = str;
	return (0);
}