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
struct mfi_ctrl_props {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MFI_DCMD_CTRL_GET_PROPS ; 
 int FUNC0 (int,int /*<<< orphan*/ ,struct mfi_ctrl_props*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC1(int fd, struct mfi_ctrl_props *info)
{

	return (FUNC0(fd, MFI_DCMD_CTRL_GET_PROPS, info,
	    sizeof(struct mfi_ctrl_props), NULL, 0, NULL));
}