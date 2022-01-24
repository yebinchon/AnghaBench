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
struct mac_lomac_element {int mle_type; int /*<<< orphan*/  mle_grade; } ;

/* Variables and functions */
#define  MAC_LOMAC_TYPE_EQUAL 131 
#define  MAC_LOMAC_TYPE_GRADE 130 
#define  MAC_LOMAC_TYPE_HIGH 129 
#define  MAC_LOMAC_TYPE_LOW 128 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int FUNC1 (struct sbuf*,char*,...) ; 

__attribute__((used)) static int
FUNC2(struct sbuf *sb, struct mac_lomac_element *element)
{

	switch (element->mle_type) {
	case MAC_LOMAC_TYPE_HIGH:
		return (FUNC1(sb, "high"));

	case MAC_LOMAC_TYPE_LOW:
		return (FUNC1(sb, "low"));

	case MAC_LOMAC_TYPE_EQUAL:
		return (FUNC1(sb, "equal"));

	case MAC_LOMAC_TYPE_GRADE:
		return (FUNC1(sb, "%d", element->mle_grade));

	default:
		FUNC0("lomac_element_to_string: invalid type (%d)",
		    element->mle_type);
	}
}