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
struct strbuf {int dummy; } ;
struct object_id {int dummy; } ;

/* Variables and functions */
 struct strbuf STRBUF_INIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,struct object_id*,struct object_id*) ; 
 int FUNC2 (struct object_id*,struct object_id*,struct strbuf*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct object_id*) ; 
 int /*<<< orphan*/  FUNC4 (struct object_id*,struct object_id*) ; 
 int /*<<< orphan*/  stdin ; 
 int /*<<< orphan*/  FUNC5 (struct strbuf*) ; 

__attribute__((used)) static void FUNC6(int stable)
{
	struct object_id oid, n, result;
	int patchlen;
	struct strbuf line_buf = STRBUF_INIT;

	FUNC3(&oid);
	while (!FUNC0(stdin)) {
		patchlen = FUNC2(&n, &result, &line_buf, stable);
		FUNC1(patchlen, &oid, &result);
		FUNC4(&oid, &n);
	}
	FUNC5(&line_buf);
}