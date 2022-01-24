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
typedef  int /*<<< orphan*/  UTC ;

/* Variables and functions */
 scalar_t__ SNMP_DATETIME_OCTETS ; 
 scalar_t__ errno ; 
 scalar_t__ FUNC0 (struct asn_oid*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (char*,char const*,int) ; 
 int FUNC2 (char*,char**,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 

__attribute__((used)) static char *
FUNC4(char *str, struct asn_oid *oid)
{
	char *endptr, *ptr;
	static const char UTC[3] = "UTC";
	int32_t saved_errno;
	uint32_t v;

	if (FUNC0(oid, (asn_subid_t) SNMP_DATETIME_OCTETS) < 0)
		return (NULL);

	/* Read 'YYYY-' and write it in two subs. */
	ptr = str;
	saved_errno = errno;
	errno = 0;
	v = FUNC2(ptr, &endptr, 10);
	if (v > 0xffff)
		goto error;
	else
		errno = saved_errno;
	if (*endptr != '-')
		goto error1;
	if (FUNC0(oid, (asn_subid_t) ((v & 0xff00) >> 8)) < 0)
		return (NULL);
	if (FUNC0(oid, (asn_subid_t) (v & 0xff)) < 0)
		return (NULL);

	/* 'MM-' */
	ptr = endptr + 1;
	saved_errno = errno;
	errno = 0;
	v = FUNC2(ptr, &endptr, 10);
	if (errno != 0)
		goto error;
	else
		errno = saved_errno;
	if (*endptr != '-')
		goto error1;
	if (FUNC0(oid, (asn_subid_t) v) < 0)
		return (NULL);

	/* 'DD,' */
	ptr = endptr + 1;
	saved_errno = errno;
	errno = 0;
	v = FUNC2(ptr, &endptr, 10);
	if (errno != 0)
		goto error;
	else
		errno = saved_errno;
	if (*endptr != '-')
		goto error1;
	if (FUNC0(oid, (asn_subid_t) v) < 0)
		return (NULL);

	/* 'HH:' */
	ptr = endptr + 1;
	saved_errno = errno;
	errno = 0;
	v = FUNC2(ptr, &endptr, 10);
	if (errno != 0)
		goto error;
	else
		errno = saved_errno;
	if (*endptr != ':')
		goto error1;
	if (FUNC0(oid, (asn_subid_t) v) < 0)
		return (NULL);

	/* 'MM:' */
	ptr = endptr + 1;
	saved_errno = errno;
	errno = 0;
	v = FUNC2(ptr, &endptr, 10);
	if (errno != 0)
		goto error;
	else
		errno = saved_errno;
	if (*endptr != ':')
		goto error1;
	if (FUNC0(oid, (asn_subid_t) v) < 0)
		return (NULL);

	/* 'SS.' */
	ptr = endptr + 1;
	saved_errno = errno;
	errno = 0;
	v = FUNC2(ptr, &endptr, 10);
	if (errno != 0)
		goto error;
	else
		errno = saved_errno;
	if (*endptr != '.')
		goto error1;
	if (FUNC0(oid, (asn_subid_t) v) < 0)
		return (NULL);

	/* 'M(mseconds),' */
	ptr = endptr + 1;
	saved_errno = errno;
	errno = 0;
	v = FUNC2(ptr, &endptr, 10);
	if (errno != 0)
		goto error;
	else
		errno = saved_errno;
	if (*endptr != ',')
		goto error1;
	if (FUNC0(oid, (asn_subid_t) v) < 0)
		return (NULL);

	/* 'UTC' - optional */
	ptr = endptr + 1;
	if (FUNC1(ptr, UTC, sizeof(UTC)) == 0)
		ptr += sizeof(UTC);

	/* '+/-' */
	if (*ptr == '-' || *ptr == '+') {
		if (FUNC0(oid, (asn_subid_t) (*ptr)) < 0)
			return (NULL);
	} else
		goto error1;

	/* 'HH:' */
	ptr = endptr + 1;
	saved_errno = errno;
	errno = 0;
	v = FUNC2(ptr, &endptr, 10);
	if (errno != 0)
		goto error;
	else
		errno = saved_errno;
	if (*endptr != ':')
		goto error1;
	if (FUNC0(oid, (asn_subid_t) v) < 0)
		return (NULL);

	/* 'MM' - last one - ignore endptr here. */
	ptr = endptr + 1;
	saved_errno = errno;
	errno = 0;
	v = FUNC2(ptr, &endptr, 10);
	if (errno != 0)
		goto error;
	else
		errno = saved_errno;
	if (FUNC0(oid, (asn_subid_t) v) < 0)
		return (NULL);

	return (endptr);

  error:
	errno = saved_errno;
  error1:
	FUNC3("Date value %s not supported", str);
	return (NULL);
}