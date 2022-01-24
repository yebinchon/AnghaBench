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
typedef  int /*<<< orphan*/  buf ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 scalar_t__ ENOENT ; 
 int E_BADMD5 ; 
 int E_CHKSUM ; 
 int E_ERRNO ; 
 int E_NAME ; 
 int /*<<< orphan*/  FUNC0 (char const*,char*) ; 
 int MDSUMLEN ; 
 int /*<<< orphan*/  NAMESIZE ; 
 int /*<<< orphan*/  O_RDONLY ; 
 scalar_t__ FUNC1 (int) ; 
 char* FUNC2 (char const*,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int,char*,char const*) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (char*,int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int) ; 
 int FUNC7 (char const*,int /*<<< orphan*/ ) ; 
 scalar_t__ opt_all ; 
 scalar_t__ opt_exist ; 
 scalar_t__ opt_ignore ; 
 int FUNC8 (char const*,char const*,int) ; 
 int FUNC9 (char*,char*,char*,char*,char*) ; 
 scalar_t__ FUNC10 (char*,char*) ; 
 int FUNC11 (char*) ; 
 char* FUNC12 (char*,char) ; 

__attribute__((used)) static int
FUNC13(FILE * fp, const char *path)
{
    char buf[298];              /* "MD5 (NAMESIZE = MDSUMLEN" */
    char name[NAMESIZE + 1];
    char sum[MDSUMLEN + 1], chk[MDSUMLEN + 1];
    const char *dname;
    char *s;
    int rval, error, c, fd;
    char ch;

    rval = 0;
    while (FUNC5(buf, sizeof(buf), fp)) {
	dname = NULL;
	error = 0;
	if (((c = FUNC9(buf, "MD5 (%256s = %32s%c", name, sum,
			 &ch)) != 3 && (!FUNC4(fp) || c != 2)) ||
	    (c == 3 && ch != '\n') ||
	    (s = FUNC12(name, ')')) == NULL ||
	    FUNC11(sum) != MDSUMLEN)
	    error = E_BADMD5;
	else {
	    *s = 0;
	    if ((dname = FUNC2(path, name, NULL)) == NULL)
		error = E_NAME;
	    else if (opt_exist) {
		if ((fd = FUNC7(dname, O_RDONLY)) == -1)
		    error = E_ERRNO;
		else if (FUNC1(fd))
		    FUNC3(2, "%s", dname);
	    } else if (!FUNC0(dname, chk))
		error = E_ERRNO;
	    else if (FUNC10(chk, sum))
		error = E_CHKSUM;
	}
	if (opt_ignore && error == E_ERRNO && errno == ENOENT)
	    continue;
	if (error || opt_all)
	    rval |= FUNC8(path, dname, error);
	if (FUNC6(error))
	    break;
    }
    return rval;
}