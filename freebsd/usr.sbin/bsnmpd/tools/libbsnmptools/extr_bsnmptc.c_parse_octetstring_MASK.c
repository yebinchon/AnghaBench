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
struct TYPE_3__ {size_t len; int /*<<< orphan*/ * octets; } ;
struct TYPE_4__ {TYPE_1__ octetstring; } ;
struct snmp_value {int /*<<< orphan*/  syntax; TYPE_2__ v; } ;
typedef  int int32_t ;

/* Variables and functions */
 int /*<<< orphan*/  LOG_ERR ; 
 size_t MAX_OCTSTRING_LEN ; 
 int /*<<< orphan*/  SNMP_SYNTAX_OCTETSTRING ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/ * FUNC0 (size_t) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,size_t) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 size_t FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,size_t) ; 

__attribute__((used)) static int32_t
FUNC6(struct snmp_value *value, char *val)
{
	size_t len;

	if ((len = FUNC3(val)) >= MAX_OCTSTRING_LEN) {
		FUNC5("Octetstring too long - %d is max allowed",
		    MAX_OCTSTRING_LEN - 1);
		return (-1);
	}

	if ((value->v.octetstring.octets = FUNC0(len)) == NULL) {
		value->v.octetstring.len = 0;
		FUNC4(LOG_ERR, "malloc failed: %s", FUNC2(errno));
		return (-1);
	}

	value->v.octetstring.len = len;
	FUNC1(value->v.octetstring.octets, val, len);
	value->syntax = SNMP_SYNTAX_OCTETSTRING;

	return (0);
}