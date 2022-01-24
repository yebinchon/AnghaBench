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
struct mfi_ld_props {int /*<<< orphan*/  ld; } ;

/* Variables and functions */
 int /*<<< orphan*/  MFI_DCMD_LD_SET_PROP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC1 (int,int /*<<< orphan*/ ,struct mfi_ld_props*,int,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC2(int fd, struct mfi_ld_props *props)
{
	uint8_t mbox[4];

	FUNC0(mbox, &props->ld);
	return (FUNC1(fd, MFI_DCMD_LD_SET_PROP, props,
	    sizeof(struct mfi_ld_props), mbox, 4, NULL));
}