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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  efi_guid_t ;

/* Variables and functions */
 int /*<<< orphan*/  attrib ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ *,char**) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,char*) ; 
 int /*<<< orphan*/ * FUNC3 (char*,size_t*) ; 

__attribute__((used)) static void
FUNC4(char *name, char *val)
{
	char *vname;
	efi_guid_t guid;
	size_t datalen;
	uint8_t *data;

	FUNC0(name, &guid, &vname);
	data = FUNC3(val, &datalen);
	if (FUNC1(guid, vname, data, datalen, attrib) < 0)
		FUNC2(1, "efi_set_variable");
}