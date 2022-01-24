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

/* Variables and functions */
 struct strbuf STRBUF_INIT ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (struct strbuf*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char* FUNC4 (struct strbuf*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static char *FUNC5(void)
{
	struct strbuf buf = STRBUF_INIT;
	FUNC3(&buf,
		    FUNC0("# This is Git's per-user configuration file.\n"
		      "[user]\n"
		      "# Please adapt and uncomment the following lines:\n"
		      "#	name = %s\n"
		      "#	email = %s\n"),
		    FUNC2(),
		    FUNC1());
	return FUNC4(&buf, NULL);
}