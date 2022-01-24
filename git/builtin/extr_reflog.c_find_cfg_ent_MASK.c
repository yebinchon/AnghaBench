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
struct reflog_expire_cfg {char* pattern; struct reflog_expire_cfg* next; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct reflog_expire_cfg*,char const*,char const*,size_t) ; 
 struct reflog_expire_cfg* reflog_expire_cfg ; 
 struct reflog_expire_cfg** reflog_expire_cfg_tail ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*,size_t) ; 

__attribute__((used)) static struct reflog_expire_cfg *FUNC2(const char *pattern, size_t len)
{
	struct reflog_expire_cfg *ent;

	if (!reflog_expire_cfg_tail)
		reflog_expire_cfg_tail = &reflog_expire_cfg;

	for (ent = reflog_expire_cfg; ent; ent = ent->next)
		if (!FUNC1(ent->pattern, pattern, len) &&
		    ent->pattern[len] == '\0')
			return ent;

	FUNC0(ent, pattern, pattern, len);
	*reflog_expire_cfg_tail = ent;
	reflog_expire_cfg_tail = &(ent->next);
	return ent;
}