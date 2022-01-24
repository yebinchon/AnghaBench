#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* rpc_gss_principal_t ;
typedef  int /*<<< orphan*/  gss_name_t ;
struct TYPE_8__ {size_t length; void* value; } ;
typedef  TYPE_2__ gss_buffer_desc ;
typedef  int /*<<< orphan*/  gss_OID ;
typedef  int /*<<< orphan*/  bool_t ;
struct TYPE_7__ {int len; int /*<<< orphan*/  name; } ;
typedef  scalar_t__ OM_uint32 ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  GSS_C_NT_USER_NAME ; 
 scalar_t__ GSS_S_COMPLETE ; 
 int /*<<< orphan*/  TRUE ; 
 scalar_t__ FUNC0 (scalar_t__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (scalar_t__*,int /*<<< orphan*/ ,TYPE_2__*) ; 
 scalar_t__ FUNC2 (scalar_t__*,TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__*,int /*<<< orphan*/ *) ; 
 void* FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (void*,size_t) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,void*,int) ; 
 int /*<<< orphan*/  FUNC8 (char*,int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC11 (char*,char const*) ; 
 int FUNC12 (char const*) ; 

bool_t
FUNC13(rpc_gss_principal_t *principal,
    const char *mech, const char *name, const char *node, const char *domain)
{
	OM_uint32		maj_stat, min_stat;
	gss_OID			mech_oid;
	size_t			namelen;
	gss_buffer_desc		buf;
	gss_name_t		gss_name, gss_mech_name;
	rpc_gss_principal_t	result;

	if (!FUNC9(mech, &mech_oid))
		return (FALSE);

	/*
	 * Construct a gss_buffer containing the full name formatted
	 * as "name/node@domain" where node and domain are optional.
	 */
	namelen = FUNC12(name) + 1;
	if (node) {
		namelen += FUNC12(node) + 1;
	}
	if (domain) {
		namelen += FUNC12(domain) + 1;
	}

	buf.value = FUNC5(namelen);
	buf.length = namelen;
	FUNC11((char *) buf.value, name);
	if (node) {
		FUNC10((char *) buf.value, "/");
		FUNC10((char *) buf.value, node);
	}
	if (domain) {
		FUNC10((char *) buf.value, "@");
		FUNC10((char *) buf.value, domain);
	}

	/*
	 * Convert that to a gss_name_t and then convert that to a
	 * mechanism name in the selected mechanism.
	 */
	maj_stat = FUNC2(&min_stat, &buf,
	    GSS_C_NT_USER_NAME, &gss_name);
	FUNC6(buf.value, buf.length);
	if (maj_stat != GSS_S_COMPLETE) {
		FUNC8("gss_import_name", mech_oid, maj_stat, min_stat);
		return (FALSE);
	}
	maj_stat = FUNC0(&min_stat, gss_name, mech_oid,
	    &gss_mech_name);
	if (maj_stat != GSS_S_COMPLETE) {
		FUNC8("gss_canonicalize_name", mech_oid, maj_stat,
		    min_stat);
		FUNC4(&min_stat, &gss_name);
		return (FALSE);
	}
	FUNC4(&min_stat, &gss_name);

	/*
	 * Export the mechanism name and use that to construct the
	 * rpc_gss_principal_t result.
	 */
	maj_stat = FUNC1(&min_stat, gss_mech_name, &buf);
	if (maj_stat != GSS_S_COMPLETE) {
		FUNC8("gss_export_name", mech_oid, maj_stat, min_stat);
		FUNC4(&min_stat, &gss_mech_name);
		return (FALSE);
	}
	FUNC4(&min_stat, &gss_mech_name);

	result = FUNC5(sizeof(int) + buf.length);
	if (!result) {
		FUNC3(&min_stat, &buf);
		return (FALSE);
	}
	result->len = buf.length;
	FUNC7(result->name, buf.value, buf.length);
	FUNC3(&min_stat, &buf);

	*principal = result;
	return (TRUE);
}