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

/* Variables and functions */
 int /*<<< orphan*/  XS_MKDIR ; 
 int /*<<< orphan*/  FUNC0 (struct sbuf*) ; 
 int /*<<< orphan*/  FUNC1 (struct sbuf*) ; 
 struct sbuf* FUNC2 (char const*,char const*) ; 
 int FUNC3 (struct xs_transaction,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

int
FUNC4(struct xs_transaction t, const char *dir, const char *node)
{
	struct sbuf *path;
	int ret;

	path = FUNC2(dir, node);
	ret = FUNC3(t, XS_MKDIR, FUNC0(path), NULL, NULL);
	FUNC1(path);

	return (ret);
}