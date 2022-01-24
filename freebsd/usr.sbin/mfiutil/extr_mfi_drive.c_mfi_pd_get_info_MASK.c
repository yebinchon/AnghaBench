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
typedef  int /*<<< orphan*/  uint16_t ;
struct mfi_pd_info {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MFI_DCMD_PD_GET_INFO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC1 (int,int /*<<< orphan*/ ,struct mfi_pd_info*,int,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 

int
FUNC2(int fd, uint16_t device_id, struct mfi_pd_info *info,
    uint8_t *statusp)
{
	uint8_t mbox[2];

	FUNC0(&mbox[0], device_id);
	return (FUNC1(fd, MFI_DCMD_PD_GET_INFO, info,
	    sizeof(struct mfi_pd_info), mbox, 2, statusp));
}