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
typedef  int /*<<< orphan*/  u_int ;
struct xs_transaction {int dummy; } ;
struct sbuf {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  XS_READ ; 
 int /*<<< orphan*/  FUNC0 (struct sbuf*) ; 
 int /*<<< orphan*/  FUNC1 (struct sbuf*) ; 
 struct sbuf* FUNC2 (char const*,char const*) ; 
 int FUNC3 (struct xs_transaction,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,void**) ; 

int
FUNC4(struct xs_transaction t, const char *dir, const char *node,
    u_int *len, void **result)
{
	struct sbuf *path;
	void *ret;
	int error;

	path = FUNC2(dir, node);
	error = FUNC3(t, XS_READ, FUNC0(path), len, &ret);
	FUNC1(path);
	if (error)
		return (error);
	*result = ret;
	return (0);
}