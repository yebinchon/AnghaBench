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
struct traverse_info {int dummy; } ;
struct strbuf {int dummy; } ;
struct name_entry {int /*<<< orphan*/  pathlen; int /*<<< orphan*/  path; } ;

/* Variables and functions */
 struct strbuf STRBUF_INIT ; 
 char* FUNC0 (struct strbuf*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct strbuf*,struct traverse_info const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static char *FUNC2(const struct traverse_info *info, const struct name_entry *n)
{
	struct strbuf buf = STRBUF_INIT;
	FUNC1(&buf, info, n->path, n->pathlen);
	return FUNC0(&buf, NULL);
}