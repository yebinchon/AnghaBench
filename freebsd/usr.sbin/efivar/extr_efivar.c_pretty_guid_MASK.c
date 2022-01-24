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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char**) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char**) ; 
 scalar_t__ gflag ; 

__attribute__((used)) static void
FUNC2(efi_guid_t *guid, char **gname)
{
	char *pretty = NULL;

	if (gflag)
		FUNC0(guid, &pretty);

	if (pretty == NULL)
		FUNC1(guid, gname);
	else
		*gname = pretty;
}