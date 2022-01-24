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
typedef  int uint8_t ;
typedef  int uint32_t ;
struct TYPE_3__ {int len; int /*<<< orphan*/ * octets; } ;
struct TYPE_4__ {TYPE_1__ octetstring; } ;
struct snmp_value {int /*<<< orphan*/  syntax; TYPE_2__ v; } ;
typedef  int int32_t ;

/* Variables and functions */
 int SNMP_DATETIME_OCTETS ; 
 int /*<<< orphan*/  SNMP_SYNTAX_OCTETSTRING ; 
 int /*<<< orphan*/ * FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int*,int) ; 
 int FUNC2 (char*,char**,int) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*) ; 

__attribute__((used)) static int32_t
FUNC5(struct snmp_value *sv, char *val)
{
	char *endptr;
	uint32_t v;
	uint8_t	date[SNMP_DATETIME_OCTETS];

	/* 'YYYY-' */
	v = FUNC2(val, &endptr, 10);
	if (v > 0xffff || *endptr != '-')
		goto error;
	date[0] = ((v & 0xff00) >> 8);
	date[1] = (v & 0xff);
	val = endptr + 1;

	/* 'MM-' */
	v = FUNC2(val, &endptr, 10);
	if (v == 0 || v > 12 || *endptr != '-')
		goto error;
	date[2] = v;
	val = endptr + 1;

	/* 'DD,' */
	v = FUNC2(val, &endptr, 10);
	if (v == 0 || v > 31 || *endptr != ',')
		goto error;
	date[3] = v;
	val = endptr + 1;

	/* 'HH:' */
	v = FUNC2(val, &endptr, 10);
	if (v > 23 || *endptr != ':')
		goto error;
	date[4] = v;
	val = endptr + 1;

	/* 'MM:' */
	v = FUNC2(val, &endptr, 10);
	if (v > 59 || *endptr != ':')
		goto error;
	date[5] = v;
	val = endptr + 1;

	/* 'SS.' */
	v = FUNC2(val, &endptr, 10);
	if (v > 60 || *endptr != '.')
		goto error;
	date[6] = v;
	val = endptr + 1;

	/* '(deci-)s,' */
	v = FUNC2(val, &endptr, 10);
	if (v > 9 || *endptr != ',')
		goto error;
	date[7] = v;
	val = endptr + 1;

	/* offset - '+/-' */
	if (*val != '-' && *val != '+')
		goto error;
	date[8] = (uint8_t) *val;
	val = endptr + 1;

	/* 'HH:' - offset from UTC */
	v = FUNC2(val, &endptr, 10);
	if (v > 13 || *endptr != ':')
		goto error;
	date[9] = v;
	val = endptr + 1;

	/* 'MM'\0''  offset from UTC */
	v = FUNC2(val, &endptr, 10);
	if (v > 59 || *endptr != '\0')
		goto error;
	date[10] = v;

	if ((sv->v.octetstring.octets = FUNC0(SNMP_DATETIME_OCTETS)) == NULL) {
		FUNC3("malloc() failed");
		return (-1);
	}

	sv->v.octetstring.len = SNMP_DATETIME_OCTETS;
	FUNC1(sv->v.octetstring.octets, date, SNMP_DATETIME_OCTETS);
	sv->syntax = SNMP_SYNTAX_OCTETSTRING;
	return (1);

  error:
	FUNC4("Date value %s not supported", val);
	return (-1);
}