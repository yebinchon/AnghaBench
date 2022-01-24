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
struct mfi_evt_log_state {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MFI_DCMD_CTRL_EVENT_GETINFO ; 
 int FUNC0 (int,int /*<<< orphan*/ ,struct mfi_evt_log_state*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC1(int fd, struct mfi_evt_log_state *info, uint8_t *statusp)
{

	return (FUNC0(fd, MFI_DCMD_CTRL_EVENT_GETINFO, info,
	    sizeof(struct mfi_evt_log_state), NULL, 0, statusp));
}