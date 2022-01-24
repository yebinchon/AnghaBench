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
typedef  scalar_t__ int32_t ;
typedef  int /*<<< orphan*/  asn_subid_t ;

/* Variables and functions */
 scalar_t__ SNMP_BRIDGEID_OCTETS ; 
 int SNMP_MAX_BRIDGE_PRIORITY ; 
 scalar_t__ errno ; 
 scalar_t__ FUNC0 (struct asn_oid*,int /*<<< orphan*/ ) ; 
 int FUNC1 (char*,char**,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 

__attribute__((used)) static char *
FUNC3(char *str, struct asn_oid *oid)
{
	char *endptr, *ptr;
	uint32_t v, i;
	int32_t saved_errno;

	if (FUNC0(oid, (asn_subid_t) SNMP_BRIDGEID_OCTETS) < 0)
		return (NULL);

	ptr = str;
	/* Read the priority. */
	saved_errno = errno;
	errno = 0;
	v = FUNC1(ptr, &endptr, 10);

	if (v > SNMP_MAX_BRIDGE_PRIORITY || errno != 0 || *endptr != '.') {
		errno = saved_errno;
		FUNC2("Bad bridge priority value %d", v);
		return (NULL);
	}

	if (FUNC0(oid, (asn_subid_t) (v & 0xff00)) < 0)
		return (NULL);

	if (FUNC0(oid, (asn_subid_t) (v & 0xff)) < 0)
		return (NULL);

	ptr = endptr + 1;
	for (i = 0; i < 5; i++) {
		saved_errno = errno;
		errno = 0;
		v = FUNC1(ptr, &endptr, 16);
		errno = saved_errno;
		if (v > 0xff) {
			FUNC2("Integer value %s not supported", str);
			return (NULL);
		}
		if (*endptr != ':') {
			FUNC2("Failed adding oid - %s",str);
			return (NULL);
		}
		if (FUNC0(oid, (asn_subid_t) v) < 0)
			return (NULL);
		ptr = endptr + 1;
	}

	/* The last one - don't check the ending char here. */
	saved_errno = errno;
	errno = 0;
	v = FUNC1(ptr, &endptr, 16);
	errno = saved_errno;
	if (v > 0xff) {
		FUNC2("Integer value %s not supported", str);
		return (NULL);
	}
	if (FUNC0(oid, (asn_subid_t) v) < 0)
		return (NULL);

	return (endptr);
}