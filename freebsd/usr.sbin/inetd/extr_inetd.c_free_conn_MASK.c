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
struct conninfo {scalar_t__ co_numchild; struct conninfo* co_proc; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct conninfo*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  co_link ; 
 int /*<<< orphan*/  FUNC1 (struct conninfo*) ; 

__attribute__((used)) static void
FUNC2(struct conninfo *conn)
{
	if (conn == NULL)
		return;
	if (conn->co_numchild <= 0) {
		FUNC0(conn, co_link);
		FUNC1(conn->co_proc);
		FUNC1(conn);
	}
}