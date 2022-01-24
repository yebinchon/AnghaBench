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
typedef  int u_char ;
typedef  TYPE_1__* hcb_p ;
struct TYPE_4__ {int scsi_mode; int /*<<< orphan*/  path; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int SMODE ; 
 int /*<<< orphan*/  nc_stest4 ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int) ; 
 char* FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5 (hcb_p np)
{
	u_char scsi_mode = FUNC0 (nc_stest4) & SMODE;

	/*
	 *  Notify user.
	 */
	FUNC4(np->path);
	FUNC1("SCSI BUS mode change from %s to %s.\n",
		FUNC3(np->scsi_mode), FUNC3(scsi_mode));

	/*
	 *  Should suspend command processing for a few seconds and
	 *  reinitialize all except the chip.
	 */
	FUNC2 (np, 2);
}