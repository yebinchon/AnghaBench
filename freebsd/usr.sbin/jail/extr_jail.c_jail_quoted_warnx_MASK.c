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
struct cfjail {char* name; int /*<<< orphan*/ * intparams; } ;

/* Variables and functions */
 size_t KP_JID ; 
 size_t KP_NAME ; 
 char* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*,...) ; 

__attribute__((used)) static void
FUNC2(const struct cfjail *j, const char *name_msg,
    const char *noname_msg)
{
	const char *pval;

	if ((pval = j->name) || (pval = FUNC0(j->intparams[KP_JID])) ||
	    (pval = FUNC0(j->intparams[KP_NAME])))
		FUNC1("\"%s\" %s", pval, name_msg);
	else
		FUNC1("%s", noname_msg);
}