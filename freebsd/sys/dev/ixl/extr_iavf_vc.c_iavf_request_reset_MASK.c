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
struct iavf_sc {int /*<<< orphan*/  hw; } ;

/* Variables and functions */
 int /*<<< orphan*/  I40E_VFGEN_RSTAT ; 
 int /*<<< orphan*/  VIRTCHNL_OP_RESET_VF ; 
 int /*<<< orphan*/  VIRTCHNL_VFR_INPROGRESS ; 
 int /*<<< orphan*/  FUNC0 (struct iavf_sc*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int
FUNC2(struct iavf_sc *sc)
{
	/*
	** Set the reset status to "in progress" before
	** the request, this avoids any possibility of
	** a mistaken early detection of completion.
	*/
	FUNC1(&sc->hw, I40E_VFGEN_RSTAT, VIRTCHNL_VFR_INPROGRESS);
	FUNC0(sc, VIRTCHNL_OP_RESET_VF, NULL, 0);
	return (0);
}