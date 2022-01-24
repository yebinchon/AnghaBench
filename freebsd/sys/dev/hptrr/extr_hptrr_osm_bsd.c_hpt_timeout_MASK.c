#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  priv; } ;
struct TYPE_5__ {TYPE_1__* vbus_ext; } ;
struct TYPE_4__ {scalar_t__ vbus; } ;
typedef  int /*<<< orphan*/  PVBUS ;
typedef  TYPE_2__* POS_CMDEXT ;
typedef  TYPE_3__* PCOMMAND ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(void *arg)
{
	PCOMMAND pCmd = (PCOMMAND)arg;
	POS_CMDEXT ext = (POS_CMDEXT)pCmd->priv;
	
	FUNC0(("pCmd %p timeout", pCmd));
	
	FUNC1((PVBUS)ext->vbus_ext->vbus);
}