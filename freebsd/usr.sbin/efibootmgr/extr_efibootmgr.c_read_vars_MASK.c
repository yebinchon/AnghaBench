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
struct entry {int /*<<< orphan*/  idx; int /*<<< orphan*/  guid; int /*<<< orphan*/  attrs; int /*<<< orphan*/  size; int /*<<< orphan*/  data; int /*<<< orphan*/  name; } ;
typedef  int /*<<< orphan*/  efi_guid_t ;

/* Variables and functions */
 int /*<<< orphan*/  EFI_GLOBAL_GUID ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct entry*,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ **,char**) ; 
 int FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  efivars ; 
 int /*<<< orphan*/  entries ; 
 int /*<<< orphan*/  FUNC5 (int,char*) ; 
 int /*<<< orphan*/  FUNC6 (char) ; 
 struct entry* FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int FUNC9 (char*) ; 
 scalar_t__ FUNC10 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC11 (char*,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void
FUNC12(void)
{

	efi_guid_t *guid;
	char *next_name = NULL;
	int ret = 0;

	struct entry *nent;

	FUNC0(&efivars);
	while ((ret = FUNC2(&guid, &next_name)) > 0) {
		/*
		 * Only pay attention to EFI:BootXXXX variables to get the list.
		 */
		if (FUNC4(guid, &EFI_GLOBAL_GUID) != 0 ||
		    FUNC9(next_name) != 8 ||
		    FUNC10(next_name, "Boot", 4) != 0 ||
		    !FUNC6(next_name[4]) ||
		    !FUNC6(next_name[5]) ||
		    !FUNC6(next_name[6]) ||
		    !FUNC6(next_name[7]))
			continue;
		nent = FUNC7(sizeof(struct entry));
		nent->name = FUNC8(next_name);

		ret = FUNC3(*guid, next_name, &nent->data,
		    &nent->size, &nent->attrs);
		if (ret < 0)
			FUNC5(1, "efi_get_variable");
		nent->guid = *guid;
		nent->idx = FUNC11(&next_name[4], NULL, 16);
		FUNC1(&efivars, nent, entries);
	}
}