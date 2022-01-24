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
struct mac_mls_element {int mme_level; int /*<<< orphan*/  mme_compartments; int /*<<< orphan*/  mme_type; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int MAC_MLS_MAX_COMPARTMENTS ; 
 int /*<<< orphan*/  MAC_MLS_TYPE_EQUAL ; 
 int /*<<< orphan*/  MAC_MLS_TYPE_HIGH ; 
 int /*<<< orphan*/  MAC_MLS_TYPE_LEVEL ; 
 int /*<<< orphan*/  MAC_MLS_TYPE_LOW ; 
 void* MAC_MLS_TYPE_UNDEF ; 
 scalar_t__ FUNC1 (char*,char*) ; 
 char* FUNC2 (char**,char*) ; 
 int FUNC3 (char*,char**,int) ; 

__attribute__((used)) static int
FUNC4(struct mac_mls_element *element, char *string)
{
	char *compartment, *end, *level;
	int value;

	if (FUNC1(string, "high") == 0 || FUNC1(string, "hi") == 0) {
		element->mme_type = MAC_MLS_TYPE_HIGH;
		element->mme_level = MAC_MLS_TYPE_UNDEF;
	} else if (FUNC1(string, "low") == 0 || FUNC1(string, "lo") == 0) {
		element->mme_type = MAC_MLS_TYPE_LOW;
		element->mme_level = MAC_MLS_TYPE_UNDEF;
	} else if (FUNC1(string, "equal") == 0 ||
	    FUNC1(string, "eq") == 0) {
		element->mme_type = MAC_MLS_TYPE_EQUAL;
		element->mme_level = MAC_MLS_TYPE_UNDEF;
	} else {
		element->mme_type = MAC_MLS_TYPE_LEVEL;

		/*
		 * Numeric level piece of the element.
		 */
		level = FUNC2(&string, ":");
		value = FUNC3(level, &end, 10);
		if (end == level || *end != '\0')
			return (EINVAL);
		if (value < 0 || value > 65535)
			return (EINVAL);
		element->mme_level = value;

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
			if (value < 1 || value > MAC_MLS_MAX_COMPARTMENTS)
				return (EINVAL);
			FUNC0(value, element->mme_compartments);
		}
	}

	return (0);
}