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
typedef  scalar_t__ (* xdrproc_t ) (int /*<<< orphan*/ *,void*) ;
typedef  int mode_t ;
typedef  scalar_t__ bool_t ;
typedef  int /*<<< orphan*/  XDR ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  LOG_ERR ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  XDR_ENCODE ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,...) ; 
 int FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool_t
FUNC7(char *filename, xdrproc_t structproc, void *list)
{
	FILE *fp;
	XDR xdrs;
	mode_t omask;

	omask = FUNC5(077);
	fp = FUNC3(filename, "w");
	if (fp == NULL) {
		int i;

		for (i = 0; i < 10; i++)
			FUNC1(i);
		fp = FUNC3(filename, "w");
		if (fp == NULL) {
			FUNC4(LOG_ERR,
				"cannot open file = %s for writing", filename);
			FUNC4(LOG_ERR, "cannot save any registration");
			return (FALSE);
		}
	}
	(void) FUNC5(omask);
	FUNC6(&xdrs, fp, XDR_ENCODE);

	if (structproc(&xdrs, list) == FALSE) {
		FUNC4(LOG_ERR, "rpcbind: xdr_%s: failed", filename);
		FUNC2(fp);
		return (FALSE);
	}
	FUNC0(&xdrs);
	FUNC2(fp);
	return (TRUE);
}