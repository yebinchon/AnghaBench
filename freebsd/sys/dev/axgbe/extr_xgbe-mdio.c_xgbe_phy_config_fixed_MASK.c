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
struct TYPE_2__ {int speed; scalar_t__ duplex; } ;
struct xgbe_prv_data {TYPE_1__ phy; } ;

/* Variables and functions */
 scalar_t__ DUPLEX_FULL ; 
 int EINVAL ; 
#define  SPEED_1000 130 
#define  SPEED_10000 129 
#define  SPEED_2500 128 
 int /*<<< orphan*/  XGBE_MODE_KR ; 
 int /*<<< orphan*/  XGBE_MODE_KX ; 
 int /*<<< orphan*/  FUNC0 (struct xgbe_prv_data*) ; 
 int /*<<< orphan*/  FUNC1 (struct xgbe_prv_data*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct xgbe_prv_data *pdata)
{

	/* Disable auto-negotiation */
	FUNC0(pdata);

	/* Validate/Set specified speed */
	switch (pdata->phy.speed) {
	case SPEED_10000:
		FUNC1(pdata, XGBE_MODE_KR);
		break;

	case SPEED_2500:
	case SPEED_1000:
		FUNC1(pdata, XGBE_MODE_KX);
		break;

	default:
		return -EINVAL;
	}

	/* Validate duplex mode */
	if (pdata->phy.duplex != DUPLEX_FULL)
		return -EINVAL;

	return 0;
}