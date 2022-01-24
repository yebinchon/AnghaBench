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
struct ib_device {int dummy; } ;

/* Variables and functions */
 scalar_t__ IB_LINK_LAYER_ETHERNET ; 
 int MLX5_VPORT_ACCESS_METHOD_HCA ; 
 int MLX5_VPORT_ACCESS_METHOD_MAD ; 
 int MLX5_VPORT_ACCESS_METHOD_NIC ; 
 scalar_t__ FUNC0 (struct ib_device*,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ib_device*) ; 

__attribute__((used)) static int FUNC3(struct ib_device *ibdev)
{
	if (FUNC1(FUNC2(ibdev)))
		return MLX5_VPORT_ACCESS_METHOD_MAD;

	if (FUNC0(ibdev, 1) ==
	    IB_LINK_LAYER_ETHERNET)
		return MLX5_VPORT_ACCESS_METHOD_NIC;

	return MLX5_VPORT_ACCESS_METHOD_HCA;
}