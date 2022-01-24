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
struct cphy {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct cphy*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct cphy*,int,int) ; 

__attribute__((used)) static int FUNC2(struct cphy *phy, int speed, int duplex)
{
	int err = FUNC1(phy, speed, duplex);

	/* PHY needs reset for new settings to take effect */
	if (!err)
		err = FUNC0(phy, 0);
	return err;
}