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
struct iwm_softc {int /*<<< orphan*/  sc_ltr_enabled; } ;
struct iwm_ltr_config_cmd {int /*<<< orphan*/  flags; } ;
typedef  int /*<<< orphan*/  cmd ;

/* Variables and functions */
 int /*<<< orphan*/  IWM_LTR_CFG_FLAG_FEATURE_ENABLE ; 
 int /*<<< orphan*/  IWM_LTR_CONFIG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct iwm_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,struct iwm_ltr_config_cmd*) ; 

__attribute__((used)) static int
FUNC2(struct iwm_softc *sc)
{
	struct iwm_ltr_config_cmd cmd = {
		.flags = FUNC0(IWM_LTR_CFG_FLAG_FEATURE_ENABLE),
	};

	if (!sc->sc_ltr_enabled)
		return 0;

	return FUNC1(sc, IWM_LTR_CONFIG, 0, sizeof(cmd), &cmd);
}