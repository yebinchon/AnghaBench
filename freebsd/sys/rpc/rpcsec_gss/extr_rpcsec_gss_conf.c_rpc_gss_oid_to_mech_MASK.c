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
typedef  int /*<<< orphan*/  gss_OID ;
typedef  int /*<<< orphan*/  bool_t ;

/* Variables and functions */
 int /*<<< orphan*/  ENOENT ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  RPC_GSS_ER_SYSTEMERROR ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char* FUNC1 (int /*<<< orphan*/ ) ; 

bool_t
FUNC2(gss_OID oid, const char **mech_ret)
{
	const char *name = FUNC1(oid);

	if (name) {
		*mech_ret = name;
		return (TRUE);
	}
	FUNC0(RPC_GSS_ER_SYSTEMERROR, ENOENT);
	return (FALSE);
}