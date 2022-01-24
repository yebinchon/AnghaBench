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
struct iavf_sc {int /*<<< orphan*/  dev; TYPE_1__* vf_res; } ;
struct TYPE_2__ {int vf_cap_flags; } ;

/* Variables and functions */
 int VIRTCHNL_VF_OFFLOAD_RSS_PF ; 
 int VIRTCHNL_VF_OFFLOAD_RSS_REG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct iavf_sc*) ; 
 int /*<<< orphan*/  FUNC2 (struct iavf_sc*) ; 
 int /*<<< orphan*/  FUNC3 (struct iavf_sc*,char*) ; 

__attribute__((used)) static void
FUNC4(struct iavf_sc *sc)
{
	if (sc->vf_res->vf_cap_flags & VIRTCHNL_VF_OFFLOAD_RSS_REG) {
		FUNC3(sc, "Setting up RSS using VF registers...");
		FUNC2(sc);
	} else if (sc->vf_res->vf_cap_flags & VIRTCHNL_VF_OFFLOAD_RSS_PF) {
		FUNC3(sc, "Setting up RSS using messages to PF...");
		FUNC1(sc);
	} else
		FUNC0(sc->dev, "VF does not support RSS capability sent by PF.\n");
}