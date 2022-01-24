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
typedef  int /*<<< orphan*/  v ;
typedef  int uint64_t ;
struct asn_oid {int dummy; } ;
typedef  int /*<<< orphan*/  asn_subid_t ;

/* Variables and functions */
 int errno ; 
 scalar_t__ FUNC0 (struct asn_oid*,int /*<<< orphan*/ ) ; 
 int FUNC1 (char*,char**,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 

__attribute__((used)) static char *
FUNC3(char *str, struct asn_oid *oid)
{
	char *endptr;
	int i, size, bits, saved_errno;
	uint64_t v, mask = 0xFF00000000000000;

	saved_errno = errno;
	errno = 0;

	v = FUNC1(str, &endptr, 16);
	if (errno != 0) {
		FUNC2("Bad BITS value %s", str);
		errno = saved_errno;
		return (NULL);
	}

	bits = 8;
	/* Determine length - up to 8 octets supported so far. */
	for (size = sizeof(v); size > 0; size--) {
		if ((v & mask) != 0)
			break;
		mask = mask >> bits;
	}

	if (size == 0)
		size = 1;

	if (FUNC0(oid, (asn_subid_t) size) < 0)
		return (NULL);

	for (i = 0, bits = 0; i < size; i++, bits += 8)
		if (FUNC0(oid,
		    (asn_subid_t)((v & mask) >> bits)) < 0)
			return (NULL);

	return (endptr);
}