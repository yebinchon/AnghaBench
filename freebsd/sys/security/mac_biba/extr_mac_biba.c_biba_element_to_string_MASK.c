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
struct sbuf {int dummy; } ;
struct mac_biba_element {int mbe_type; int mbe_grade; int /*<<< orphan*/  mbe_compartments; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int MAC_BIBA_MAX_COMPARTMENTS ; 
#define  MAC_BIBA_TYPE_EQUAL 131 
#define  MAC_BIBA_TYPE_GRADE 130 
#define  MAC_BIBA_TYPE_HIGH 129 
#define  MAC_BIBA_TYPE_LOW 128 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int FUNC2 (struct sbuf*,char*,...) ; 
 int FUNC3 (struct sbuf*,char) ; 

__attribute__((used)) static int
FUNC4(struct sbuf *sb, struct mac_biba_element *element)
{
	int i, first;

	switch (element->mbe_type) {
	case MAC_BIBA_TYPE_HIGH:
		return (FUNC2(sb, "high"));

	case MAC_BIBA_TYPE_LOW:
		return (FUNC2(sb, "low"));

	case MAC_BIBA_TYPE_EQUAL:
		return (FUNC2(sb, "equal"));

	case MAC_BIBA_TYPE_GRADE:
		if (FUNC2(sb, "%d", element->mbe_grade) == -1)
			return (-1);

		first = 1;
		for (i = 1; i <= MAC_BIBA_MAX_COMPARTMENTS; i++) {
			if (FUNC0(i, element->mbe_compartments)) {
				if (first) {
					if (FUNC3(sb, ':') == -1)
						return (-1);
					if (FUNC2(sb, "%d", i) == -1)
						return (-1);
					first = 0;
				} else {
					if (FUNC2(sb, "+%d", i) == -1)
						return (-1);
				}
			}
		}
		return (0);

	default:
		FUNC1("biba_element_to_string: invalid type (%d)",
		    element->mbe_type);
	}
}