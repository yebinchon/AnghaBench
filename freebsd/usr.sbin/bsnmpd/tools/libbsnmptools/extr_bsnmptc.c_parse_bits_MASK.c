#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  v ;
typedef  int uint64_t ;
struct TYPE_3__ {int* octets; int len; } ;
struct TYPE_4__ {TYPE_1__ octetstring; } ;
struct snmp_value {int /*<<< orphan*/  syntax; TYPE_2__ v; } ;
typedef  int int32_t ;

/* Variables and functions */
 int /*<<< orphan*/  LOG_ERR ; 
 int /*<<< orphan*/  SNMP_SYNTAX_OCTETSTRING ; 
 int errno ; 
 int* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (char*,char**,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*) ; 

__attribute__((used)) static int32_t
FUNC5(struct snmp_value *value, char *string)
{
	char *endptr;
	int i, size, bits, saved_errno;
	uint64_t v, mask = 0xFF00000000000000;

	saved_errno = errno;
	errno = 0;

	v = FUNC2(string, &endptr, 16);

	if (errno != 0) {
		FUNC4("Bad BITS value %s", string);
		errno = saved_errno;
		return (-1);
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

	if ((value->v.octetstring.octets = FUNC0(size)) == NULL) {
		FUNC3(LOG_ERR, "malloc failed: %s", FUNC1(errno));
		return (-1);
	}

	value->v.octetstring.len = size;
	for (i = 0, bits = 0; i < size; i++, bits += 8)
		value->v.octetstring.octets[i] = (v & mask) >> bits;
	value->syntax = SNMP_SYNTAX_OCTETSTRING;
	return (1);
}