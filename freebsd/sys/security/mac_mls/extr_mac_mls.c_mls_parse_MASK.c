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
struct mac_mls {int /*<<< orphan*/  mm_flags; int /*<<< orphan*/  mm_rangehigh; int /*<<< orphan*/  mm_rangelow; int /*<<< orphan*/  mm_effective; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  MAC_MLS_FLAG_EFFECTIVE ; 
 int /*<<< orphan*/  MAC_MLS_FLAG_RANGE ; 
 int /*<<< orphan*/  FUNC1 (struct mac_mls*,int) ; 
 int FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int FUNC3 (struct mac_mls*) ; 
 char* FUNC4 (char**,char*) ; 

__attribute__((used)) static int
FUNC5(struct mac_mls *mm, char *string)
{
	char *rangehigh, *rangelow, *effective;
	int error;

	effective = FUNC4(&string, "(");
	if (*effective == '\0')
		effective = NULL;

	if (string != NULL) {
		rangelow = FUNC4(&string, "-");
		if (string == NULL)
			return (EINVAL);
		rangehigh = FUNC4(&string, ")");
		if (string == NULL)
			return (EINVAL);
		if (*string != '\0')
			return (EINVAL);
	} else {
		rangelow = NULL;
		rangehigh = NULL;
	}

	FUNC0((rangelow != NULL && rangehigh != NULL) ||
	    (rangelow == NULL && rangehigh == NULL),
	    ("mls_parse: range mismatch"));

	FUNC1(mm, sizeof(*mm));
	if (effective != NULL) {
		error = FUNC2(&mm->mm_effective, effective);
		if (error)
			return (error);
		mm->mm_flags |= MAC_MLS_FLAG_EFFECTIVE;
	}

	if (rangelow != NULL) {
		error = FUNC2(&mm->mm_rangelow, rangelow);
		if (error)
			return (error);
		error = FUNC2(&mm->mm_rangehigh, rangehigh);
		if (error)
			return (error);
		mm->mm_flags |= MAC_MLS_FLAG_RANGE;
	}

	error = FUNC3(mm);
	if (error)
		return (error);

	return (0);
}