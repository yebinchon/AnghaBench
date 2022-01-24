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
struct stat {scalar_t__ st_uid; int st_mode; } ;
typedef  scalar_t__ bool_t ;
typedef  int /*<<< orphan*/  XDR ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 scalar_t__ FALSE ; 
 int S_IRWXG ; 
 int S_IRWXO ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  XDR_DECODE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,...) ; 
 scalar_t__ FUNC4 (char*,struct stat*) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool_t
FUNC6(char *filename, xdrproc_t structproc, void *list)
{
	FILE *fp;
	XDR xdrs;
	struct stat sbuf;

	if (FUNC4(filename, &sbuf) != 0) {
		FUNC3(stderr,
		"rpcbind: cannot stat file = %s for reading\n", filename);
		goto error;
	}
	if ((sbuf.st_uid != 0) || (sbuf.st_mode & S_IRWXG) ||
	    (sbuf.st_mode & S_IRWXO)) {
		FUNC3(stderr,
		"rpcbind: invalid permissions on file = %s for reading\n",
			filename);
		goto error;
	}
	fp = FUNC2(filename, "r");
	if (fp == NULL) {
		FUNC3(stderr,
		"rpcbind: cannot open file = %s for reading\n", filename);
		goto error;
	}
	FUNC5(&xdrs, fp, XDR_DECODE);

	if (structproc(&xdrs, list) == FALSE) {
		FUNC3(stderr, "rpcbind: xdr_%s: failed\n", filename);
		FUNC1(fp);
		goto error;
	}
	FUNC0(&xdrs);
	FUNC1(fp);
	return (TRUE);

error:	FUNC3(stderr, "rpcbind: will start from scratch\n");
	return (FALSE);
}