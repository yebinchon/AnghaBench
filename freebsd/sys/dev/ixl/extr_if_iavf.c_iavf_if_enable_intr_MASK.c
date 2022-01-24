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
struct iavf_sc {struct ixl_vsi vsi; } ;
typedef  int /*<<< orphan*/  if_ctx_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ixl_vsi*) ; 
 struct iavf_sc* FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC2(if_ctx_t ctx)
{
	struct iavf_sc *sc = FUNC1(ctx);
	struct ixl_vsi *vsi = &sc->vsi;

	FUNC0(vsi);
}