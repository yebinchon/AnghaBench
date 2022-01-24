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
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 scalar_t__ FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,char const*,char*) ; 

__attribute__((used)) static int FUNC2(const struct object_id *oid,
		struct strbuf *base,
		const char *pathname, unsigned mode, int stage, void *context)
{
	FILE *file = context;
	FUNC1(file, "%s%s\n", pathname, FUNC0(mode) ? "/" : "");
	return 0;
}