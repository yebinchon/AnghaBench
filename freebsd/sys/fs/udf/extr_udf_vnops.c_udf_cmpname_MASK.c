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
struct udf_mnt {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  M_WAITOK ; 
 int FUNC0 (char*,char*,int) ; 
 int FUNC1 (char*,char*,int,struct udf_mnt*) ; 
 int /*<<< orphan*/  udf_zone_trans ; 
 char* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int
FUNC4(char *cs0string, char *cmpname, int cs0len, int cmplen, struct udf_mnt *udfmp)
{
	char *transname;
	int error = 0;

	/* This is overkill, but not worth creating a new zone */
	transname = FUNC2(udf_zone_trans, M_WAITOK);

	cs0len = FUNC1(cs0string, transname, cs0len, udfmp);

	/* Easy check.  If they aren't the same length, they aren't equal */
	if ((cs0len == 0) || (cs0len != cmplen))
		error = -1;
	else
		error = FUNC0(transname, cmpname, cmplen);

	FUNC3(udf_zone_trans, transname);
	return (error);
}