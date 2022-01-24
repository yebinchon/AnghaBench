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
typedef  scalar_t__ uint32_t ;
typedef  scalar_t__ u_long ;
struct stat {scalar_t__ st_size; } ;
typedef  scalar_t__ off_t ;
typedef  scalar_t__ intmax_t ;
typedef  int /*<<< orphan*/  buf ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 scalar_t__ ENOENT ; 
 int E_BADINF ; 
 int E_CHKSUM ; 
 int E_ERRNO ; 
 int E_LENGTH ; 
 int E_NAME ; 
 int /*<<< orphan*/  O_RDONLY ; 
 scalar_t__ FUNC0 (int) ; 
 scalar_t__ FUNC1 (int,scalar_t__*,scalar_t__*) ; 
 char* FUNC2 (char const*,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (int,char*,char const*) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (char*,int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int,struct stat*) ; 
 scalar_t__ FUNC7 (int) ; 
 int FUNC8 (char const*,int /*<<< orphan*/ ) ; 
 scalar_t__ opt_all ; 
 int /*<<< orphan*/  opt_exist ; 
 scalar_t__ opt_ignore ; 
 int FUNC9 (char const*,char const*,int) ; 
 int FUNC10 (char*,char*,...) ; 
 int /*<<< orphan*/ * stdin ; 

__attribute__((used)) static int
FUNC11(FILE * fp, const char *path)
{
    char buf[30];               /* "cksum.2 = 10 6" */
    char ext[3];
    struct stat sb;
    const char *dname;
    off_t len;
    u_long sum;
    intmax_t sumlen;
    uint32_t chk;
    int rval, error, c, pieces, cnt, fd;
    char ch;

    rval = 0;
    for (cnt = -1; FUNC5(buf, sizeof(buf), fp); cnt++) {
	fd = -1;
	dname = NULL;
	error = 0;
	if (cnt == -1) {
	    if ((c = FUNC10(buf, "Pieces =  %d%c", &pieces, &ch)) != 2 ||
		ch != '\n' || pieces < 1)
		error = E_BADINF;
	} else if (((c = FUNC10(buf, "cksum.%2s = %lu %jd%c", ext, &sum,
			        &sumlen, &ch)) != 4 &&
		    (!FUNC4(fp) || c != 3)) || (c == 4 && ch != '\n') ||
		   ext[0] != 'a' + cnt / 26 || ext[1] != 'a' + cnt % 26)
	    error = E_BADINF;
	else if ((dname = FUNC2(fp == stdin ? NULL : path, NULL,
				    ext)) == NULL)
	    error = E_NAME;
	else if ((fd = FUNC8(dname, O_RDONLY)) == -1)
	    error = E_ERRNO;
	else if (FUNC6(fd, &sb))
	    error = E_ERRNO;
	else if (sb.st_size != (off_t)sumlen)
	    error = E_LENGTH;
	else if (!opt_exist) {
	    if (FUNC1(fd, &chk, &len))
		error = E_ERRNO;
	    else if (chk != sum)
		error = E_CHKSUM;
	}
	if (fd != -1 && FUNC0(fd))
	    FUNC3(2, "%s", dname);
	if (opt_ignore && error == E_ERRNO && errno == ENOENT)
	    continue;
	if (error || (opt_all && cnt >= 0))
	    rval |= FUNC9(path, dname, error);
	if (FUNC7(error))
	    break;
    }
    return rval;
}