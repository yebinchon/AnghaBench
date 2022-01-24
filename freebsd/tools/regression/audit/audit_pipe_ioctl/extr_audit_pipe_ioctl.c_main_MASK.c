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
typedef  scalar_t__ u_int64_t ;
typedef  scalar_t__ u_int ;
typedef  scalar_t__ int64_t ;

/* Variables and functions */
 int /*<<< orphan*/  AUDITPIPE_GET_DROPS ; 
 int /*<<< orphan*/  AUDITPIPE_GET_INSERTS ; 
 int /*<<< orphan*/  AUDITPIPE_GET_QLEN ; 
 int /*<<< orphan*/  AUDITPIPE_GET_QLIMIT ; 
 int /*<<< orphan*/  AUDITPIPE_GET_QLIMIT_MAX ; 
 int /*<<< orphan*/  AUDITPIPE_GET_QLIMIT_MIN ; 
 int /*<<< orphan*/  AUDITPIPE_GET_READS ; 
 int /*<<< orphan*/  AUDITPIPE_GET_TRUNCATES ; 
 int /*<<< orphan*/  AUDITPIPE_SET_QLIMIT ; 
 int /*<<< orphan*/  O_RDONLY ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 scalar_t__ FUNC2 (int,int /*<<< orphan*/ ,scalar_t__*) ; 
 int FUNC3 (char*,int /*<<< orphan*/ ) ; 

int
FUNC4(int argc, char *argv[])
{
	u_int len, minlen, maxlen;
	u_int64_t astat;
	int fd;

	fd = FUNC3("/dev/auditpipe", O_RDONLY);
	if (fd < 0)
		FUNC0(-1, "/dev/auditpipe");

	/*
	 * First, test that we can read the queue length, queue limit, and
	 * bounds on queue length limits.
	 */
	len = (u_int)(-1);
	if (FUNC2(fd, AUDITPIPE_GET_QLEN, &len) < 0)
		FUNC0(-1, "AUDITPIPE_GET_QLEN");
	if (len == (u_int)(-1))
		FUNC1(-1, "AUDITPIPE_GET_QLEN: unchanged");

	minlen = (u_int)(-1);
	if (FUNC2(fd, AUDITPIPE_GET_QLIMIT_MIN, &minlen) < 0)
		FUNC0(-1, "AUDITPIPE_GET_QLIMIT_MIN");
	if (minlen == (u_int)(-1))
		FUNC1(-1, "AUDITPIPE_GET_QLIMIT_MIN: unchanged");

	maxlen = (u_int)(-1);
	if (FUNC2(fd, AUDITPIPE_GET_QLIMIT_MAX, &maxlen) < 0)
		FUNC0(-1, "AUDITPIPE_GET_QLIMIT_MAX");
	if (maxlen == (u_int)(-1))
		FUNC1(-1, "AUDITPIPE_GET_QLIMIT_MAX: unchanged");

	len = (u_int)(-1);
	if (FUNC2(fd, AUDITPIPE_GET_QLIMIT, &len) < 0)
		FUNC0(-1, "AUDITPIPE_GET_QLIMIT");
	if (len == (u_int)(-1))
		FUNC1(-1, "AUDITPIPE_GET_QLIMIT: unchanged");

	if (!(len >= minlen))
		FUNC1(-1, "queue length < minlen");

	if (!(len <= maxlen))
		FUNC1(-1, "queue length > maxlen");

	/*
	 * Try setting the queue length to first minimum, then maximum
	 * lengths.  Query after each to make sure it changed.
	 */
	len = minlen;
	if (FUNC2(fd, AUDITPIPE_SET_QLIMIT, &len) < 0)
		FUNC0(-1, "AUDITPIPE_SET_QLIMIT(min)");

	if (FUNC2(fd, AUDITPIPE_GET_QLIMIT, &len) < 0)
		FUNC0(-1, "AUDITPIPE_GET_QLIMIT");

	if (len != minlen)
		FUNC1(-1, "set to minlen didn't work");

	len = maxlen;
	if (FUNC2(fd, AUDITPIPE_SET_QLIMIT, &len) < 0)
		FUNC0(-1, "AUDITPIPE_SET_QLIMIT(max)");

	if (FUNC2(fd, AUDITPIPE_GET_QLIMIT, &len) < 0)
		FUNC0(-1, "AUDITPIPE_GETQLIMIT");

	if (len != maxlen)
		FUNC1(-1, "set to maxlen didn't work");

	/*
	 * Check that we can query the defined stats.  No attempt to
	 * validate.
	 */
	astat = (u_int64_t)(int64_t)(-1);
	if (FUNC2(fd, AUDITPIPE_GET_INSERTS, &astat) < 0)
		FUNC0(-1, "AUDITPIPE_GET_INSERTS");
	if (astat == (u_int64_t)(int64_t)(-1))
		FUNC1(-1, "AUDITPIPE_GET_INSERTS: unchanged");

	astat = (u_int64_t)(int64_t)(-1);
	if (FUNC2(fd, AUDITPIPE_GET_READS, &astat) < 0)
		FUNC0(-1, "AUDITPIPE_GET_READS");
	if (astat == (u_int64_t)(int64_t)(-1))
		FUNC1(-1, "AUDITPIPE_GET_READS: unchanged");

	astat = (u_int64_t)(int64_t)(-1);
	if (FUNC2(fd, AUDITPIPE_GET_DROPS, &astat) < 0)
		FUNC0(-1, "AUDITPIPE_GET_DROPS");
	if (astat == (u_int64_t)(int64_t)(-1))
		FUNC1(-1, "AUDITPIPE_GET_DROPS: unchanged");

	astat = (u_int64_t)(int64_t)(-1);
	if (FUNC2(fd, AUDITPIPE_GET_TRUNCATES, &astat) < 0)
		FUNC0(-1, "AUDITPIPE_GET_TRUNCATES");
	if (astat == (u_int64_t)(int64_t)(-1))
		FUNC1(-1, "AUDITPIPE_GET_TRUNCATES: unchanged");

	return (0);
}