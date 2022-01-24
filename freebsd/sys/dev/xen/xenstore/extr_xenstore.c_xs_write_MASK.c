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
struct xs_transaction {int dummy; } ;
struct sbuf {int dummy; } ;
struct iovec {scalar_t__ iov_len; void* iov_base; } ;

/* Variables and functions */
 int /*<<< orphan*/  XS_WRITE ; 
 scalar_t__ FUNC0 (struct sbuf*) ; 
 int /*<<< orphan*/  FUNC1 (struct sbuf*) ; 
 scalar_t__ FUNC2 (struct sbuf*) ; 
 scalar_t__ FUNC3 (char const*) ; 
 struct sbuf* FUNC4 (char const*,char const*) ; 
 int FUNC5 (struct xs_transaction,int /*<<< orphan*/ ,struct iovec*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

int
FUNC6(struct xs_transaction t, const char *dir, const char *node,
    const char *string)
{
	struct sbuf *path;
	struct iovec iovec[2];
	int error;

	path = FUNC4(dir, node);

	iovec[0].iov_base = (void *)(uintptr_t) FUNC0(path);
	iovec[0].iov_len = FUNC2(path) + 1;
	iovec[1].iov_base = (void *)(uintptr_t) string;
	iovec[1].iov_len = FUNC3(string);

	error = FUNC5(t, XS_WRITE, iovec, 2, NULL, NULL);
	FUNC1(path);

	return (error);
}