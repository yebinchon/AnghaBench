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
 scalar_t__ FUNC0 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,char*) ; 
 char* FUNC2 (char*,char) ; 

__attribute__((used)) static void
FUNC3(char *name, efi_guid_t *guid, char **vname)
{
	char *cp;

	cp = FUNC2(name, '-');
	if (cp == NULL)
		FUNC1(1, "Invalid name: %s", name);
	*vname = cp + 1;
	*cp = '\0';
	if (FUNC0(name, guid) < 0)
		FUNC1(1, "Invalid guid %s", name);
}