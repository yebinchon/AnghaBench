#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u_int32_t ;
typedef  int u_int ;
typedef  enum dot3Vendors { ____Placeholder_dot3Vendors } dot3Vendors ;
struct TYPE_2__ {char* name; int len; char** chips; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_1__* chipset_names ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 

__attribute__((used)) static void
FUNC3(u_int32_t chipset)
{
	enum dot3Vendors vendor = FUNC1(chipset);
	u_int part = FUNC0(chipset);

	FUNC2("\tChipset: ");
	if (vendor < 1 
	    || vendor >= (sizeof chipset_names)/(sizeof chipset_names[0])
	    || !chipset_names[vendor].name) {
		FUNC2("unknown\n");
		return;
	}

	FUNC2("%s ", chipset_names[vendor].name);
	if (part < 1 || part >= chipset_names[vendor].len) {
		FUNC2("unknown\n");
		return;
	}

	FUNC2("%s\n", chipset_names[vendor].chips[part]);
}