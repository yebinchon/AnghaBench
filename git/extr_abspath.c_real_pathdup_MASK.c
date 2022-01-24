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
 char* FUNC0 (struct strbuf*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (struct strbuf*,char const*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct strbuf*) ; 

char *FUNC3(const char *path, int die_on_error)
{
	struct strbuf realpath = STRBUF_INIT;
	char *retval = NULL;

	if (FUNC1(&realpath, path, die_on_error))
		retval = FUNC0(&realpath, NULL);

	FUNC2(&realpath);

	return retval;
}