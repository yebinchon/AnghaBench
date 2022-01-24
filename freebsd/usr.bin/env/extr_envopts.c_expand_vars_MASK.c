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

/* Variables and functions */
 int env_verbosity ; 
 int /*<<< orphan*/  FUNC0 (int,char*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 char* FUNC3 (char*) ; 
 scalar_t__ FUNC4 (char const) ; 
 scalar_t__ FUNC5 (char const) ; 
 char* FUNC6 (size_t) ; 
 int /*<<< orphan*/  stderr ; 
 char* FUNC7 (char*,char) ; 
 int /*<<< orphan*/  FUNC8 (char*,char*) ; 
 int /*<<< orphan*/  FUNC9 (char*,char const*,size_t) ; 
 size_t FUNC10 (char const*) ; 

__attribute__((used)) static const char *
FUNC11(int in_thisarg, char **thisarg_p, char **dest_p, const char **src_p)
{
	const char *vbegin, *vend, *vvalue;
	char *newstr, *vname;
	int bad_reference;
	size_t namelen, newlen;

	bad_reference = 1;
	vbegin = vend = (*src_p) + 1;
	if (*vbegin++ == '{')
		if (*vbegin == '_' || FUNC5(*vbegin)) {
			vend = vbegin + 1;
			while (*vend == '_' || FUNC4(*vend))
				vend++;
			if (*vend == '}')
				bad_reference = 0;
		}
	if (bad_reference)
		FUNC0(1, "Only ${VARNAME} expansion is supported, error at: %s",
		    *src_p);

	/*
	 * We now know we have a valid environment variable name, so update
	 * the caller's source-pointer to the last character in that reference,
	 * and then pick up the matching value.  If the variable is not found,
	 * or if it has a null value, then our work here is done.
	 */
	*src_p = vend;
	namelen = vend - vbegin + 1;
	vname = FUNC6(namelen);
	FUNC9(vname, vbegin, namelen);
	vvalue = FUNC3(vname);
	if (vvalue == NULL || *vvalue == '\0') {
		if (env_verbosity > 2)
			FUNC1(stderr,
			    "#env  replacing ${%s} with null string\n",
			    vname);
		FUNC2(vname);
		return (NULL);
	}

	if (env_verbosity > 2)
		FUNC1(stderr, "#env  expanding ${%s} into '%s'\n", vname,
		    vvalue);

	/*
	 * There is some value to copy to the destination.  If the value is
	 * shorter than the ${VARNAME} reference that it replaces, then our
	 * caller can just copy the value to the existing destination.
	 */
	if (FUNC10(vname) + 3 >= FUNC10(vvalue)) {
		FUNC2(vname);
		return (vvalue);
	}

	/*
	 * The value is longer than the string it replaces, which means the
	 * present destination area is too small to hold it.  Create a new
	 * destination area, and update the caller's 'dest' variable to match.
	 * If the caller has already started copying some info for 'thisarg'
	 * into the present destination, then the new destination area must
	 * include a copy of that data, and the pointer to 'thisarg' must also
	 * be updated.  Note that it is still the caller which copies this
	 * vvalue to the new *dest.
	 */
	newlen = FUNC10(vvalue) + FUNC10(*src_p) + 1;
	if (in_thisarg) {
		**dest_p = '\0';	/* Provide terminator for 'thisarg' */
		newlen += FUNC10(*thisarg_p);
		newstr = FUNC6(newlen);
		FUNC8(newstr, *thisarg_p);
		*thisarg_p = newstr;
	} else {
		newstr = FUNC6(newlen);
		*newstr = '\0';
	}
	*dest_p = FUNC7(newstr, '\0');
	FUNC2(vname);
	return (vvalue);
}