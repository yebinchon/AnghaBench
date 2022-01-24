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
 int /*<<< orphan*/  abbrev ; 
 int /*<<< orphan*/  FUNC0 (struct object_id const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct strbuf*,char*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(int depth, const struct object_id *oid, struct strbuf *dst)
{
	FUNC1(dst, "-%d-g%s", depth, FUNC0(oid, abbrev));
}