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
 int FUNC0 (int /*<<< orphan*/ **,char**) ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 

__attribute__((used)) static void
FUNC3(void)
{
	int rv;
	char *name = NULL;
	efi_guid_t *guid = NULL;

	while ((rv = FUNC0(&guid, &name)) > 0)
		FUNC2(guid, name);

	if (rv < 0)
		FUNC1(1, "Error listing names");
}