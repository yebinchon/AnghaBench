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
struct ber_oid {scalar_t__ bo_n; int /*<<< orphan*/ * bo_id; } ;
typedef  int /*<<< orphan*/  str ;

/* Variables and functions */
 scalar_t__ BER_MAX_OID_LEN ; 
 int BUFSIZ ; 
 int /*<<< orphan*/  UINT_MAX ; 
 int /*<<< orphan*/  FUNC0 (struct ber_oid*,int) ; 
 int FUNC1 (char*,char const*,int) ; 
 char* FUNC2 (char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const**) ; 

int
FUNC4(const char *oidstr, struct ber_oid *o)
{
	char			*sp, *p, str[BUFSIZ];
	const char		*errstr;

	if (FUNC1(str, oidstr, sizeof(str)) >= sizeof(str))
		return (-1);
	FUNC0(o, sizeof(*o));

	/* Parse OID strings in the common forms n.n.n, n_n_n_n, or n-n-n */
	for (p = sp = str; p != NULL; sp = p) {
		if ((p = FUNC2(p, "._-")) != NULL)
			*p++ = '\0';
		o->bo_id[o->bo_n++] = FUNC3(sp, 0, UINT_MAX, &errstr);
		if (errstr || o->bo_n > BER_MAX_OID_LEN)
			return (-1);
	}

	return (0);
}