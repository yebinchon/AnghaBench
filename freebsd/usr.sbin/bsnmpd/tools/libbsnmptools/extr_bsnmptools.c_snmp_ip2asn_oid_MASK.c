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
typedef  int uint32_t ;
struct asn_oid {int dummy; } ;
typedef  int int32_t ;
typedef  int /*<<< orphan*/  asn_subid_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct asn_oid*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (char*,char) ; 
 int FUNC2 (char*,char**,int) ; 

__attribute__((used)) static char *
FUNC3(char *str, struct asn_oid *oid)
{
	uint32_t v;
	int32_t i;
	char *endptr, *ptr;

	ptr = str;

	for (i = 0; i < 4; i++) {
		v = FUNC2(ptr, &endptr, 10);
		if (v > 0xff)
			return (NULL);
		if (*endptr != '.' && FUNC1("],\0", *endptr) == NULL && i != 3)
			return (NULL);
		if (FUNC0(oid, (asn_subid_t) v) < 0)
			return (NULL);
		ptr = endptr + 1;
	}

	return (endptr);
}