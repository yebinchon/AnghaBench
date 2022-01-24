#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uid_t ;
struct passwd {scalar_t__ pw_name; } ;
typedef  int /*<<< orphan*/  gss_name_t ;
typedef  int /*<<< orphan*/  gss_cred_id_t ;
struct TYPE_3__ {int /*<<< orphan*/  length; void* value; } ;
typedef  TYPE_1__ gss_buffer_desc ;
typedef  int /*<<< orphan*/  gss_OID_set ;
typedef  scalar_t__ OM_uint32 ;

/* Variables and functions */
 int /*<<< orphan*/  GSS_C_INITIATE ; 
 int /*<<< orphan*/  GSS_C_NT_USER_NAME ; 
 int /*<<< orphan*/  GSS_KRB5_MECH_OID_X ; 
 scalar_t__ GSS_S_COMPLETE ; 
 scalar_t__ GSS_S_FAILURE ; 
 struct passwd* FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (scalar_t__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (scalar_t__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (scalar_t__*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (scalar_t__*,TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__) ; 

__attribute__((used)) static OM_uint32
FUNC8(OM_uint32 *min_statp, uid_t uid, gss_cred_id_t *credp)
{
	gss_buffer_desc principal_desc;
	gss_name_t name;
	OM_uint32 maj_stat, min_stat;
	gss_OID_set mechlist;
	struct passwd *pw;

	pw = FUNC0(uid);
	if (pw == NULL) {
		*min_statp = 0;
		return (GSS_S_FAILURE);
	}

	/*
	 * The mechanism must be set to KerberosV for acquisition
	 * of credentials to work reliably.
	 */
	maj_stat = FUNC3(min_statp, &mechlist);
	if (maj_stat != GSS_S_COMPLETE)
		return (maj_stat);
	maj_stat = FUNC2(min_statp, GSS_KRB5_MECH_OID_X,
	    &mechlist);
	if (maj_stat != GSS_S_COMPLETE) {
		FUNC6(&min_stat, &mechlist);
		return (maj_stat);
	}

	principal_desc.value = (void *)pw->pw_name;
	principal_desc.length = FUNC7(pw->pw_name);
	maj_stat = FUNC4(min_statp, &principal_desc,
	    GSS_C_NT_USER_NAME, &name);
	if (maj_stat != GSS_S_COMPLETE) {
		FUNC6(&min_stat, &mechlist);
		return (maj_stat);
	}
	/* Acquire the credentials. */
	maj_stat = FUNC1(min_statp, name, 0, mechlist,
	    GSS_C_INITIATE, credp, NULL, NULL);
	FUNC5(&min_stat, &name);
	FUNC6(&min_stat, &mechlist);
	return (maj_stat);
}