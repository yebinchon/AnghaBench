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
struct mac_biba {int /*<<< orphan*/  mb_flags; int /*<<< orphan*/  mb_rangehigh; int /*<<< orphan*/  mb_rangelow; int /*<<< orphan*/  mb_effective; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  MAC_BIBA_FLAG_EFFECTIVE ; 
 int /*<<< orphan*/  MAC_BIBA_FLAG_RANGE ; 
 int FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int FUNC2 (struct mac_biba*) ; 
 int /*<<< orphan*/  FUNC3 (struct mac_biba*,int) ; 
 char* FUNC4 (char**,char*) ; 

__attribute__((used)) static int
FUNC5(struct mac_biba *mb, char *string)
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
	    ("biba_parse: range mismatch"));

	FUNC3(mb, sizeof(*mb));
	if (effective != NULL) {
		error = FUNC1(&mb->mb_effective, effective);
		if (error)
			return (error);
		mb->mb_flags |= MAC_BIBA_FLAG_EFFECTIVE;
	}

	if (rangelow != NULL) {
		error = FUNC1(&mb->mb_rangelow, rangelow);
		if (error)
			return (error);
		error = FUNC1(&mb->mb_rangehigh, rangehigh);
		if (error)
			return (error);
		mb->mb_flags |= MAC_BIBA_FLAG_RANGE;
	}

	error = FUNC2(mb);
	if (error)
		return (error);

	return (0);
}