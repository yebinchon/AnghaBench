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
struct ixl_vsi {int dummy; } ;
struct ixl_pf {int /*<<< orphan*/  qtag; scalar_t__ iw_enabled; struct ixl_vsi vsi; } ;
typedef  int /*<<< orphan*/  if_ctx_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 struct ixl_pf* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ixl_pf*,struct ixl_vsi*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct ixl_vsi*) ; 
 scalar_t__ ixl_enable_iwarp ; 
 int /*<<< orphan*/  FUNC4 (struct ixl_pf*) ; 

void
FUNC5(if_ctx_t ctx)
{
	struct ixl_pf *pf = FUNC1(ctx);
	struct ixl_vsi *vsi = &pf->vsi;

	FUNC0("ixl_if_stop: begin\n");

	// TODO: This may need to be reworked
#ifdef IXL_IW
	/* Stop iWARP device */
	if (ixl_enable_iwarp && pf->iw_enabled)
		ixl_iw_pf_stop(pf);
#endif

	FUNC3(vsi);
	FUNC2(pf, vsi, &pf->qtag);
}