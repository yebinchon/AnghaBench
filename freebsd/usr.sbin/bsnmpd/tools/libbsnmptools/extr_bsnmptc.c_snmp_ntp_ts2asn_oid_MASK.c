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
struct asn_oid {int* subs; scalar_t__ len; } ;
typedef  int /*<<< orphan*/  asn_subid_t ;

/* Variables and functions */
 scalar_t__ SNMP_NTP_TS_OCTETS ; 
 int /*<<< orphan*/  FUNC0 (struct asn_oid*,struct asn_oid*) ; 
 int errno ; 
 int /*<<< orphan*/  FUNC1 (struct asn_oid*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC2 (struct asn_oid*,int /*<<< orphan*/ ) ; 
 int FUNC3 (char*,char**,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*) ; 

__attribute__((used)) static char *
FUNC5(char *str, struct asn_oid *oid)
{
	char *endptr, *ptr;
	uint32_t v, i, d;
	struct asn_oid suboid;
	int saved_errno;

	if (FUNC2(oid, (asn_subid_t) SNMP_NTP_TS_OCTETS) < 0)
		return (NULL);

	ptr = str;
	saved_errno = errno;
	errno = 0;
	v = FUNC3(ptr, &endptr, 10);
	if (errno != 0 || (v / 1000) > 9) {
		FUNC4("Integer value %s not supported", str);
		errno = saved_errno;
		return (NULL);
	} else
		errno = saved_errno;

	if (*endptr != '.') {
		FUNC4("Failed adding oid - %s", str);
		return (NULL);
	}

	FUNC1(&suboid, 0, sizeof(struct asn_oid));
	suboid.len = SNMP_NTP_TS_OCTETS;

	for (i = 0, d = 1000; i < 4; i++) {
		suboid.subs[i] = v / d;
		v = v % d;
		d = d / 10;
	}

	ptr = endptr + 1;
	saved_errno = errno;
	errno = 0;
	v = FUNC3(ptr, &endptr, 10);
	if (errno != 0 || (v / 1000) > 9) {
		FUNC4("Integer value %s not supported", str);
		errno = saved_errno;
		return (NULL);
	} else
		errno = saved_errno;

	for (i = 0, d = 1000; i < 4; i++) {
		suboid.subs[i + 4] = v / d;
		v = v % d;
		d = d / 10;
	}

	FUNC0(oid, &suboid);
	return (endptr);
}