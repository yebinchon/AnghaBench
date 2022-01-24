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
struct elink_vars {int dummy; } ;
struct elink_params {struct bxe_softc* sc; } ;
struct bxe_softc {int dummy; } ;
typedef  int /*<<< orphan*/  elink_status_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct bxe_softc*) ; 
 scalar_t__ FUNC1 (struct bxe_softc*) ; 
 scalar_t__ FUNC2 (struct bxe_softc*) ; 
 int /*<<< orphan*/  FUNC3 (struct bxe_softc*,char*) ; 
 int /*<<< orphan*/  ELINK_STATUS_ERROR ; 
 int /*<<< orphan*/  ELINK_STATUS_OK ; 
 int /*<<< orphan*/  FUNC4 (struct elink_params*) ; 
 int /*<<< orphan*/  FUNC5 (struct elink_params*,struct elink_vars*) ; 

elink_status_t FUNC6(struct elink_params *params,
		      struct elink_vars *vars)
{
	struct bxe_softc *sc = params->sc;
	elink_status_t elink_status = ELINK_STATUS_OK;

	if ((FUNC0(sc)) || (FUNC1(sc)))
		FUNC4(params);
	else if (FUNC2(sc))
		elink_status = FUNC5(params, vars);
	else {
		FUNC3(sc, "elink_ets_disabled - chip not supported\n");
		return ELINK_STATUS_ERROR;
	}

	return elink_status;
}