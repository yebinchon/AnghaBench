#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {struct TYPE_4__* ibe_name; struct TYPE_4__* ibe_interpreter; struct TYPE_4__* ibe_mask; struct TYPE_4__* ibe_magic; } ;
typedef  TYPE_1__ imgact_binmisc_entry_t ;

/* Variables and functions */
 int /*<<< orphan*/  M_BINMISC ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC1(imgact_binmisc_entry_t *ibe)
{
	if (!ibe)
		return;
	if (ibe->ibe_magic)
		FUNC0(ibe->ibe_magic, M_BINMISC);
	if (ibe->ibe_mask)
		FUNC0(ibe->ibe_mask, M_BINMISC);
	if (ibe->ibe_interpreter)
		FUNC0(ibe->ibe_interpreter, M_BINMISC);
	if (ibe->ibe_name)
		FUNC0(ibe->ibe_name, M_BINMISC);
	if (ibe)
		FUNC0(ibe, M_BINMISC);
}