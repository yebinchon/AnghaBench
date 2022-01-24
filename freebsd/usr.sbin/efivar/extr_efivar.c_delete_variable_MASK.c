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
typedef  int /*<<< orphan*/  efi_guid_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ *,char**) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int,char*) ; 

__attribute__((used)) static void
FUNC3(char *name)
{
	char *vname;
	efi_guid_t guid;

	FUNC0(name, &guid, &vname);
	if (FUNC1(guid, vname) < 0)
		FUNC2(1, "efi_del_variable");
}