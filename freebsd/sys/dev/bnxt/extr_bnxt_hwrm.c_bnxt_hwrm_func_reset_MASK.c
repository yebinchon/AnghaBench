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
struct hwrm_func_reset_input {scalar_t__ enables; int /*<<< orphan*/  member_0; } ;
struct bnxt_softc {int dummy; } ;
typedef  int /*<<< orphan*/  req ;

/* Variables and functions */
 int /*<<< orphan*/  HWRM_FUNC_RESET ; 
 int /*<<< orphan*/  FUNC0 (struct bnxt_softc*,struct hwrm_func_reset_input*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct bnxt_softc*,struct hwrm_func_reset_input*,int) ; 

int
FUNC2(struct bnxt_softc *softc)
{
	struct hwrm_func_reset_input req = {0};

	FUNC0(softc, &req, HWRM_FUNC_RESET);
	req.enables = 0;

	return FUNC1(softc, &req, sizeof(req));
}