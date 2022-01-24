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
struct stack {int dummy; } ;
struct sbuf {int dummy; } ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int /*<<< orphan*/  KDB_WHY_WITNESS ; 
 int /*<<< orphan*/  SBUF_FIXEDLEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC1 (struct sbuf*) ; 
 int /*<<< orphan*/  FUNC2 (struct sbuf*,char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct sbuf*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct stack*) ; 
 int /*<<< orphan*/  FUNC5 (struct sbuf*,struct stack*) ; 
 int /*<<< orphan*/  FUNC6 (struct stack*) ; 
 scalar_t__ witness_kdb ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  witness_output_drain ; 
 scalar_t__ witness_trace ; 

__attribute__((used)) static void
FUNC8(int cond, const char *msg)
{
	char buf[32];
	struct sbuf sb;
	struct stack st;

	if (!cond)
		return;

	if (witness_trace) {
		FUNC2(&sb, buf, sizeof(buf), SBUF_FIXEDLEN);
		FUNC3(&sb, witness_output_drain, NULL);

		FUNC6(&st);
		FUNC4(&st);
		FUNC7("stack backtrace:\n");
		FUNC5(&sb, &st);

		FUNC1(&sb);
	}

#ifdef KDB
	if (witness_kdb)
		kdb_enter(KDB_WHY_WITNESS, msg);
#endif
}