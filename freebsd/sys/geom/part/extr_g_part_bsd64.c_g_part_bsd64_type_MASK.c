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
struct g_part_table {int dummy; } ;
struct g_part_entry {int dummy; } ;
struct g_part_bsd64_entry {scalar_t__ fstype; int /*<<< orphan*/  type_uuid; } ;
struct bsd64_uuid_alias {scalar_t__ fstype; int /*<<< orphan*/  alias; int /*<<< orphan*/ * uuid; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FS_OTHER ; 
 int /*<<< orphan*/  bsd64_uuid_unused ; 
 struct bsd64_uuid_alias* dfbsd_alias_match ; 
 struct bsd64_uuid_alias* fbsd_alias_match ; 
 char const* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,size_t,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (char*,size_t,int /*<<< orphan*/ *) ; 

__attribute__((used)) static const char *
FUNC4(struct g_part_table *basetable, struct g_part_entry *baseentry,
    char *buf, size_t bufsz)
{
	struct g_part_bsd64_entry *entry;
	struct bsd64_uuid_alias *uap;

	entry = (struct g_part_bsd64_entry *)baseentry;
	if (entry->fstype != FS_OTHER) {
		for (uap = &dfbsd_alias_match[0]; uap->uuid != NULL; uap++)
			if (uap->fstype == entry->fstype)
				return (FUNC1(uap->alias));
	} else {
		for (uap = &fbsd_alias_match[0]; uap->uuid != NULL; uap++)
			if (FUNC0(uap->uuid, &entry->type_uuid))
				return (FUNC1(uap->alias));
		for (uap = &dfbsd_alias_match[0]; uap->uuid != NULL; uap++)
			if (FUNC0(uap->uuid, &entry->type_uuid))
				return (FUNC1(uap->alias));
	}
	if (FUNC0(&bsd64_uuid_unused, &entry->type_uuid))
		FUNC2(buf, bufsz, "!%d", entry->fstype);
	else {
		buf[0] = '!';
		FUNC3(buf + 1, bufsz - 1, &entry->type_uuid);
	}
	return (buf);
}