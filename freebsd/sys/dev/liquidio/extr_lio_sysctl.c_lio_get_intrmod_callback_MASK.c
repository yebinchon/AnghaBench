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
typedef  int /*<<< orphan*/  uint64_t ;
typedef  scalar_t__ uint32_t ;
struct octeon_intrmod_cfg {int dummy; } ;
struct TYPE_2__ {struct ifnet* ifp; } ;
struct octeon_device {TYPE_1__ props; } ;
struct lio_soft_command {scalar_t__ virtrptr; } ;
struct lio_intrmod_resp {int /*<<< orphan*/  intrmod; } ;
struct lio {int /*<<< orphan*/  intrmod_cfg; } ;
struct ifnet {int dummy; } ;

/* Variables and functions */
 struct lio* FUNC0 (struct ifnet*) ; 
 int /*<<< orphan*/  FUNC1 (struct octeon_device*,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct octeon_device*,struct lio_soft_command*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void
FUNC5(struct octeon_device *oct_dev, uint32_t status,
			 void *ptr)
{
	struct lio_soft_command	*sc = (struct lio_soft_command *)ptr;
	struct ifnet		*ifp = oct_dev->props.ifp;
	struct lio		*lio = FUNC0(ifp);
	struct lio_intrmod_resp	*resp;

	if (status) {
		FUNC1(oct_dev, "Failed to get intrmod\n");
	} else {
		resp = (struct lio_intrmod_resp *)sc->virtrptr;
		FUNC3((uint64_t *)&resp->intrmod,
				 (sizeof(struct octeon_intrmod_cfg)) / 8);
		FUNC4(&lio->intrmod_cfg, &resp->intrmod,
		       sizeof(struct octeon_intrmod_cfg));
	}

	FUNC2(oct_dev, sc);
}