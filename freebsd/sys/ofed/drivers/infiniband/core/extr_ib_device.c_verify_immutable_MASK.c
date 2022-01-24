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
typedef  int /*<<< orphan*/  u8 ;
struct ib_device {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct ib_device const*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct ib_device const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(const struct ib_device *dev, u8 port)
{
	return FUNC0(!FUNC1(dev, port) &&
			    FUNC2(dev, port) != 0);
}