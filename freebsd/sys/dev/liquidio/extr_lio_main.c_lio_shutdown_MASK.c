#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  ifp; } ;
struct octeon_device {TYPE_1__ props; } ;
struct lio {int dummy; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 struct octeon_device* FUNC0 (int /*<<< orphan*/ ) ; 
 struct lio* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct lio*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC3(device_t dev)
{
	struct octeon_device	*oct_dev = FUNC0(dev);
	struct lio	*lio = FUNC1(oct_dev->props.ifp);

	FUNC2(lio, 0);

	return (0);
}