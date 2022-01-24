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
typedef  int u32 ;
struct mlx4_dev {TYPE_1__* persist; } ;
struct TYPE_5__ {int toggle; scalar_t__ hcr; } ;
struct TYPE_6__ {TYPE_2__ cmd; } ;
struct TYPE_4__ {int /*<<< orphan*/  pdev; } ;

/* Variables and functions */
 int EIO ; 
 int HCR_GO_BIT ; 
 scalar_t__ HCR_STATUS_OFFSET ; 
 int HCR_T_BIT ; 
 TYPE_3__* FUNC0 (struct mlx4_dev*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (scalar_t__) ; 
 int FUNC3 (int) ; 

__attribute__((used)) static int FUNC4(struct mlx4_dev *dev)
{
	u32 status;

	if (FUNC1(dev->persist->pdev))
		return -EIO;

	status = FUNC2(FUNC0(dev)->cmd.hcr + HCR_STATUS_OFFSET);

	return (status & FUNC3(1 << HCR_GO_BIT)) ||
		(FUNC0(dev)->cmd.toggle ==
		 !!(status & FUNC3(1 << HCR_T_BIT)));
}