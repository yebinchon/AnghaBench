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
typedef  int /*<<< orphan*/  va_list ;
struct xs_transaction {int dummy; } ;
struct sbuf {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct sbuf*) ; 
 int /*<<< orphan*/  FUNC1 (struct sbuf*) ; 
 int /*<<< orphan*/  FUNC2 (struct sbuf*) ; 
 struct sbuf* FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (struct sbuf*,char const*,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct xs_transaction,char const*,char const*,int /*<<< orphan*/ ) ; 

int
FUNC6(struct xs_transaction t,
    const char *dir, const char *node, const char *fmt, va_list ap)
{
	struct sbuf *sb;
	int error;

	sb = FUNC3();
	FUNC4(sb, fmt, ap);
	FUNC2(sb);
	error = FUNC5(t, dir, node, FUNC0(sb));
	FUNC1(sb);

	return (error);
}