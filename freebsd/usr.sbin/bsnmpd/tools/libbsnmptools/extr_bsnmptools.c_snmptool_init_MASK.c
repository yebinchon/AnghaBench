#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct snmp_toolinfo {int /*<<< orphan*/ * passwd; int /*<<< orphan*/  filelist; int /*<<< orphan*/  flags; int /*<<< orphan*/ * mappings; scalar_t__ objects; } ;
struct TYPE_4__ {int /*<<< orphan*/ * sec_name; int /*<<< orphan*/  priv_proto; int /*<<< orphan*/  auth_proto; } ;
struct TYPE_5__ {int /*<<< orphan*/  version; TYPE_1__ user; } ;

/* Variables and functions */
 int /*<<< orphan*/  IsoOrgDod_OID ; 
 size_t MAXSTR ; 
 int /*<<< orphan*/  FUNC0 (struct snmp_toolinfo*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  SNMP_AUTH_HMAC_MD5 ; 
 int /*<<< orphan*/  SNMP_AUTH_HMAC_SHA ; 
 int /*<<< orphan*/  SNMP_MAX_REPETITIONS ; 
 int /*<<< orphan*/  SNMP_PDU_GET ; 
 int /*<<< orphan*/  SNMP_PRIV_AES ; 
 int /*<<< orphan*/  SNMP_PRIV_DES ; 
 int /*<<< orphan*/  SNMP_V3 ; 
 scalar_t__ FUNC2 (struct snmp_toolinfo*,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 char* bsnmpd_defs ; 
 char* FUNC3 (char*) ; 
 int /*<<< orphan*/ * FUNC4 (size_t) ; 
 int /*<<< orphan*/  FUNC5 (struct snmp_toolinfo*,int /*<<< orphan*/ ,int) ; 
 char* mibII_defs ; 
 TYPE_2__ snmp_client ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 
 scalar_t__ FUNC7 (char*,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char*,size_t) ; 
 size_t FUNC9 (char*) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 
 int /*<<< orphan*/  FUNC11 (char*,char*) ; 

int
FUNC12(struct snmp_toolinfo *snmptoolctx)
{
	char *str;
	size_t slen;

	FUNC5(snmptoolctx, 0, sizeof(struct snmp_toolinfo));
	snmptoolctx->objects = 0;
	snmptoolctx->mappings = NULL;
	snmptoolctx->flags = SNMP_PDU_GET;	/* XXX */
	FUNC1(&snmptoolctx->filelist);
	FUNC6(&snmp_client);
	FUNC0(snmptoolctx, SNMP_MAX_REPETITIONS);

	if (FUNC2(snmptoolctx, bsnmpd_defs, &IsoOrgDod_OID, 0) < 0)
		FUNC11("Error adding file %s to list", bsnmpd_defs);

	if (FUNC2(snmptoolctx, mibII_defs, &IsoOrgDod_OID, 0) < 0)
		FUNC11("Error adding file %s to list", mibII_defs);

	/* Read the environment */
	if ((str = FUNC3("SNMPAUTH")) != NULL) {
		slen = FUNC9(str);
		if (slen == FUNC9("md5") && FUNC7(str, "md5") == 0)
			snmp_client.user.auth_proto = SNMP_AUTH_HMAC_MD5;
		else if (slen == FUNC9("sha")&& FUNC7(str, "sha") == 0)
			snmp_client.user.auth_proto = SNMP_AUTH_HMAC_SHA;
		else if (slen != 0)
			FUNC11("Bad authentication type - %s in SNMPAUTH", str);
	}

	if ((str = FUNC3("SNMPPRIV")) != NULL) {
		slen = FUNC9(str);
		if (slen == FUNC9("des") && FUNC7(str, "des") == 0)
			snmp_client.user.priv_proto = SNMP_PRIV_DES;
		else if (slen == FUNC9("aes")&& FUNC7(str, "aes") == 0)
			snmp_client.user.priv_proto = SNMP_PRIV_AES;
		else if (slen != 0)
			FUNC11("Bad privacy type - %s in SNMPPRIV", str);
	}

	if ((str = FUNC3("SNMPUSER")) != NULL) {
		if ((slen = FUNC9(str)) > sizeof(snmp_client.user.sec_name)) {
			FUNC11("Username too long - %s in SNMPUSER", str);
			return (-1);
		}
		if (slen > 0) {
			FUNC8(snmp_client.user.sec_name, str,
			    sizeof(snmp_client.user.sec_name));
			snmp_client.version = SNMP_V3;
		}
	}

	if ((str = FUNC3("SNMPPASSWD")) != NULL) {
		if ((slen = FUNC9(str)) > MAXSTR)
			slen = MAXSTR - 1;
		if ((snmptoolctx->passwd = FUNC4(slen + 1)) == NULL) {
			FUNC10("malloc() failed");
			return (-1);
		}
		if (slen > 0)
			FUNC8(snmptoolctx->passwd, str, slen + 1);
	}

	return (0);
}