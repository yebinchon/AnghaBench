#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  ACBFlag; } ;
typedef  TYPE_1__* PACB ;

/* Variables and functions */
 int /*<<< orphan*/  DO_RSTSCSI ; 
 int INT_SCSIRESET ; 
 int /*<<< orphan*/  RESET_DEV ; 
 int /*<<< orphan*/  TRMREG_SCSI_CONTROL ; 
 int /*<<< orphan*/  TRMREG_SCSI_INTSTATUS ; 
 int FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void 
FUNC4(PACB pACB)
{
	int	intflag;

	intflag = FUNC0();
    	pACB->ACBFlag |= RESET_DEV;

	FUNC3(DO_RSTSCSI,TRMREG_SCSI_CONTROL);
	while (!(FUNC2(TRMREG_SCSI_INTSTATUS) & INT_SCSIRESET));
	FUNC1(intflag);
	return;
}