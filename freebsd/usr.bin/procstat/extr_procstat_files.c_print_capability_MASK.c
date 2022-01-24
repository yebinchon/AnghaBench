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
typedef  size_t u_int ;
typedef  int /*<<< orphan*/  cap_rights_t ;
struct TYPE_2__ {int /*<<< orphan*/  cd_desc; int /*<<< orphan*/  cd_right; } ;

/* Variables and functions */
 TYPE_1__* cap_desc ; 
 size_t cap_desc_count ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 size_t FUNC1 (int /*<<< orphan*/ ) ; 
 size_t FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 

__attribute__((used)) static void
FUNC6(cap_rights_t *rightsp, u_int capwidth)
{
	u_int count, i, width;

	count = 0;
	width = 0;
	for (i = FUNC2(rightsp); i < capwidth; i++) {
		if (i != 0)
			FUNC4(" ");
		else
			FUNC4("-");
	}
	FUNC5("capabilities");
	for (i = 0; i < cap_desc_count; i++) {
		if (FUNC0(rightsp, cap_desc[i].cd_right)) {
			FUNC4("{D:/%s}{l:capabilities/%s}", count ? "," : "",
			    cap_desc[i].cd_desc);
			width += FUNC1(cap_desc[i].cd_desc);
			if (count)
				width++;
			count++;
		}
	}
	FUNC3("capabilities");
}