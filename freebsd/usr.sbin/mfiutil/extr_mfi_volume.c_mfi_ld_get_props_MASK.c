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
struct mfi_ld_props {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MFI_DCMD_LD_GET_PROP ; 
 int FUNC0 (int,int /*<<< orphan*/ ,struct mfi_ld_props*,int,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC1(int fd, uint8_t target_id, struct mfi_ld_props *props)
{
	uint8_t mbox[1];

	mbox[0] = target_id;
	return (FUNC0(fd, MFI_DCMD_LD_GET_PROP, props,
	    sizeof(struct mfi_ld_props), mbox, 1, NULL));
}