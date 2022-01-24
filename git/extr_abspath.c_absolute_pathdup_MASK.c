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
 int /*<<< orphan*/  FUNC0 (struct strbuf*,char const*) ; 
 char* FUNC1 (struct strbuf*,int /*<<< orphan*/ *) ; 

char *FUNC2(const char *path)
{
	struct strbuf sb = STRBUF_INIT;
	FUNC0(&sb, path);
	return FUNC1(&sb, NULL);
}