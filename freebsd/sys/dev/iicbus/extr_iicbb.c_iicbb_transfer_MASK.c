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
typedef  int /*<<< orphan*/  uint32_t ;
struct iic_msg {int dummy; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,struct iic_msg*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC4(device_t dev, struct iic_msg *msgs, uint32_t nmsgs)
{
	int error;

	error = FUNC1(FUNC2(dev));
	if (error)
		return (error);

	error = FUNC3(dev, msgs, nmsgs);

	FUNC0(FUNC2(dev));
	return (error);
}