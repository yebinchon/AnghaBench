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
 int /*<<< orphan*/  XS_DIRECTORY ; 
 int /*<<< orphan*/  FUNC0 (struct sbuf*) ; 
 int /*<<< orphan*/  FUNC1 (struct sbuf*) ; 
 char** FUNC2 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct sbuf* FUNC3 (char const*,char const*) ; 
 int FUNC4 (struct xs_transaction,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,void**) ; 

int
FUNC5(struct xs_transaction t, const char *dir, const char *node,
    u_int *num, const char ***result)
{
	struct sbuf *path;
	char *strings;
	u_int len = 0;
	int error;

	path = FUNC3(dir, node);
	error = FUNC4(t, XS_DIRECTORY, FUNC0(path), &len,
	    (void **)&strings);
	FUNC1(path);
	if (error)
		return (error);

	*result = FUNC2(strings, len, num);

	return (0);
}