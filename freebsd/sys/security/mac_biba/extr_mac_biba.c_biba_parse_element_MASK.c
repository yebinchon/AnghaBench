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
struct mac_biba_element {int mbe_grade; int /*<<< orphan*/  mbe_compartments; int /*<<< orphan*/  mbe_type; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int MAC_BIBA_MAX_COMPARTMENTS ; 
 int /*<<< orphan*/  MAC_BIBA_TYPE_EQUAL ; 
 int /*<<< orphan*/  MAC_BIBA_TYPE_GRADE ; 
 int /*<<< orphan*/  MAC_BIBA_TYPE_HIGH ; 
 int /*<<< orphan*/  MAC_BIBA_TYPE_LOW ; 
 void* MAC_BIBA_TYPE_UNDEF ; 
 scalar_t__ FUNC1 (char*,char*) ; 
 char* FUNC2 (char**,char*) ; 
 int FUNC3 (char*,char**,int) ; 

__attribute__((used)) static int
FUNC4(struct mac_biba_element *element, char *string)
{
	char *compartment, *end, *grade;
	int value;

	if (FUNC1(string, "high") == 0 || FUNC1(string, "hi") == 0) {
		element->mbe_type = MAC_BIBA_TYPE_HIGH;
		element->mbe_grade = MAC_BIBA_TYPE_UNDEF;
	} else if (FUNC1(string, "low") == 0 || FUNC1(string, "lo") == 0) {
		element->mbe_type = MAC_BIBA_TYPE_LOW;
		element->mbe_grade = MAC_BIBA_TYPE_UNDEF;
	} else if (FUNC1(string, "equal") == 0 ||
	    FUNC1(string, "eq") == 0) {
		element->mbe_type = MAC_BIBA_TYPE_EQUAL;
		element->mbe_grade = MAC_BIBA_TYPE_UNDEF;
	} else {
		element->mbe_type = MAC_BIBA_TYPE_GRADE;

		/*
		 * Numeric grade piece of the element.
		 */
		grade = FUNC2(&string, ":");
		value = FUNC3(grade, &end, 10);
		if (end == grade || *end != '\0')
			return (EINVAL);
		if (value < 0 || value > 65535)
			return (EINVAL);
		element->mbe_grade = value;

		/*
		 * Optional compartment piece of the element.  If none are
		 * included, we assume that the label has no compartments.
		 */
		if (string == NULL)
			return (0);
		if (*string == '\0')
			return (0);

		while ((compartment = FUNC2(&string, "+")) != NULL) {
			value = FUNC3(compartment, &end, 10);
			if (compartment == end || *end != '\0')
				return (EINVAL);
			if (value < 1 || value > MAC_BIBA_MAX_COMPARTMENTS)
				return (EINVAL);
			FUNC0(value, element->mbe_compartments);
		}
	}

	return (0);
}