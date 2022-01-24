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
typedef  int /*<<< orphan*/  u_char ;
struct iic_msg {int /*<<< orphan*/ * member_3; int /*<<< orphan*/  member_2; int /*<<< orphan*/  member_1; int /*<<< orphan*/  member_0; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  IIC_M_RD ; 
 int /*<<< orphan*/  IIC_M_WR ; 
 int SMB_EINVAL ; 
#define  SMB_QREAD 129 
#define  SMB_QWRITE 128 
 int FUNC0 (int /*<<< orphan*/ ,struct iic_msg*) ; 
 int FUNC1 (int) ; 

__attribute__((used)) static int
FUNC2(device_t dev, u_char slave, int how)
{
	struct iic_msg msgs[] = {
	     { &slave, how == SMB_QWRITE ? IIC_M_WR : IIC_M_RD, 0, NULL },
	};
	int error;

	switch (how) {
	case SMB_QWRITE:
	case SMB_QREAD:
		break;
	default:
		return (SMB_EINVAL);
	}

	error = FUNC0(dev, msgs);
	return (FUNC1(error));
}