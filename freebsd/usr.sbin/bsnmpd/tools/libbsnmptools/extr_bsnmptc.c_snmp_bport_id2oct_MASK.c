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
typedef  int /*<<< orphan*/  asn_subid_t ;

/* Variables and functions */
 scalar_t__ SNMP_BPORT_OCTETS ; 
 int SNMP_MAX_BPORT_PRIORITY ; 
 int errno ; 
 scalar_t__ FUNC0 (struct asn_oid*,int /*<<< orphan*/ ) ; 
 int FUNC1 (char*,char**,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 

__attribute__((used)) static char *
FUNC3(char *str, struct asn_oid *oid)
{
	char *endptr, *ptr;
	uint32_t v;
	int saved_errno;

	if (FUNC0(oid, (asn_subid_t) SNMP_BPORT_OCTETS) < 0)
		return (NULL);

	ptr = str;
	/* Read the priority. */
	saved_errno = errno;
	errno = 0;
	v = FUNC1(ptr, &endptr, 10);

	if (v > SNMP_MAX_BPORT_PRIORITY || errno != 0 || *endptr != '.') {
		errno = saved_errno;
		FUNC2("Bad bridge port priority value %d", v);
		return (NULL);
	}

	if (FUNC0(oid, (asn_subid_t) v) < 0)
		return (NULL);

	saved_errno = errno;
	errno = 0;
	v = FUNC1(ptr, &endptr, 16);
	errno = saved_errno;

	if (v > 0xff) {
		FUNC2("Bad port number - %d", v);
		return (NULL);
	}

	if (FUNC0(oid, (asn_subid_t) v) < 0)
		return (NULL);

	return (endptr);
}