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
typedef  int /*<<< orphan*/  CONFIG_PAGE_SCSI_DEVICE_1 ;

/* Variables and functions */
 int /*<<< orphan*/  Configuration ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RequestedParameters ; 
 int /*<<< orphan*/  Reserved ; 

void
FUNC1(CONFIG_PAGE_SCSI_DEVICE_1 *sd1)
{

	FUNC0(sd1, RequestedParameters);
	FUNC0(sd1, Reserved);
	FUNC0(sd1, Configuration);
}