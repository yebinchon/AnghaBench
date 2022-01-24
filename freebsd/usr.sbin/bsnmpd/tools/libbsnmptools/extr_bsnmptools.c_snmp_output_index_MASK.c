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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  uint64_t ;
typedef  scalar_t__ uint32_t ;
struct snmp_toolinfo {int dummy; } ;
struct index {int syntax; int /*<<< orphan*/  tc; int /*<<< orphan*/  snmp_enum; } ;
struct asn_oid {scalar_t__ len; int /*<<< orphan*/ * subs; } ;
typedef  int int32_t ;

/* Variables and functions */
 int /*<<< orphan*/  ASN_MAXOCTETSTRING ; 
 int /*<<< orphan*/  ASN_MAXOIDLEN ; 
#define  SNMP_SYNTAX_COUNTER 135 
#define  SNMP_SYNTAX_COUNTER64 134 
#define  SNMP_SYNTAX_GAUGE 133 
#define  SNMP_SYNTAX_INTEGER 132 
#define  SNMP_SYNTAX_IPADDRESS 131 
#define  SNMP_SYNTAX_OCTETSTRING 130 
#define  SNMP_SYNTAX_OID 129 
#define  SNMP_SYNTAX_TIMETICKS 128 
 int /*<<< orphan*/  FUNC0 (struct asn_oid*,struct asn_oid*) ; 
 int /*<<< orphan*/  FUNC1 (struct asn_oid*,struct asn_oid*,int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct asn_oid*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct snmp_toolinfo*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct snmp_toolinfo*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct snmp_toolinfo*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct snmp_toolinfo*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct snmp_toolinfo*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct snmp_toolinfo*,int /*<<< orphan*/ ,struct asn_oid*) ; 
 int /*<<< orphan*/  FUNC10 (struct snmp_toolinfo*,struct asn_oid*) ; 
 int /*<<< orphan*/  FUNC11 (struct snmp_toolinfo*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int32_t
FUNC12(struct snmp_toolinfo *snmptoolctx, struct index *stx,
    struct asn_oid *oid)
{
	uint8_t ip[4];
	uint32_t bytes = 1;
	uint64_t cnt64;
	struct asn_oid temp, out;

	if (oid->len < bytes)
		return (-1);

	FUNC3(&temp, 0, sizeof(struct asn_oid));
	FUNC0(&temp, oid);

	switch (stx->syntax) {
	    case SNMP_SYNTAX_INTEGER:
		FUNC7(snmptoolctx, stx->snmp_enum, temp.subs[0]);
		break;

	    case SNMP_SYNTAX_OCTETSTRING:
		if ((temp.subs[0] > temp.len -1 ) || (temp.subs[0] >
		    ASN_MAXOCTETSTRING))
			return (-1);
		FUNC9(snmptoolctx, stx->tc, &temp);
		bytes += temp.subs[0];
		break;

	    case SNMP_SYNTAX_OID:
		if ((temp.subs[0] > temp.len -1) || (temp.subs[0] >
		    ASN_MAXOIDLEN))
			return (-1);

		bytes += temp.subs[0];
		FUNC3(&out, 0, sizeof(struct asn_oid));
		FUNC1(&out, &temp, 1, bytes);
		FUNC10(snmptoolctx, &out);
		break;

	    case SNMP_SYNTAX_IPADDRESS:
		if (temp.len < 4)
			return (-1);
		for (bytes = 0; bytes < 4; bytes++)
			ip[bytes] = temp.subs[bytes];

		FUNC8(snmptoolctx, ip);
		bytes = 4;
		break;

	    case SNMP_SYNTAX_COUNTER:
		FUNC4(snmptoolctx, temp.subs[0]);
		break;

	    case SNMP_SYNTAX_GAUGE:
		FUNC6(snmptoolctx, temp.subs[0]);
		break;

	    case SNMP_SYNTAX_TIMETICKS:
		FUNC11(snmptoolctx, temp.subs[0]);
		break;

	    case SNMP_SYNTAX_COUNTER64:
		if (oid->len < 2)
			return (-1);
		bytes = 2;
		FUNC2(&cnt64, temp.subs, bytes);
		FUNC5(snmptoolctx, cnt64);
		break;

	    default:
		return (-1);
	}

	return (bytes);
}