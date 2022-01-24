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
typedef  scalar_t__ uint32_t ;
struct iwm_softc {int /*<<< orphan*/  sc_dev; } ;
struct iwm_mvm_phy_ctxt {int /*<<< orphan*/  color; int /*<<< orphan*/  id; } ;
struct iwm_mvm_iface_iterator_data {int idx; int /*<<< orphan*/ * colors; int /*<<< orphan*/ * ids; struct iwm_mvm_phy_ctxt* phyctxt; } ;
struct iwm_binding_cmd {void** macs; void* phy; void* action; void* id_and_color; } ;
typedef  int /*<<< orphan*/  cmd ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  IWM_BINDING_CONTEXT_CMD ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ IWM_FW_CTXT_INVALID ; 
 int IWM_MAX_MACS_IN_BINDING ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,scalar_t__,...) ; 
 void* FUNC2 (scalar_t__) ; 
 int FUNC3 (struct iwm_softc*,int /*<<< orphan*/ ,int,struct iwm_binding_cmd*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC4 (struct iwm_binding_cmd*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC5(struct iwm_softc *sc, uint32_t action,
	struct iwm_mvm_iface_iterator_data *data)
{
	struct iwm_binding_cmd cmd;
	struct iwm_mvm_phy_ctxt *phyctxt = data->phyctxt;
	int i, ret;
	uint32_t status;

	FUNC4(&cmd, 0, sizeof(cmd));

	cmd.id_and_color
	    = FUNC2(FUNC0(phyctxt->id, phyctxt->color));
	cmd.action = FUNC2(action);
	cmd.phy = FUNC2(FUNC0(phyctxt->id, phyctxt->color));

	for (i = 0; i < IWM_MAX_MACS_IN_BINDING; i++)
		cmd.macs[i] = FUNC2(IWM_FW_CTXT_INVALID);
	for (i = 0; i < data->idx; i++)
		cmd.macs[i] = FUNC2(FUNC0(data->ids[i],
							      data->colors[i]));

	status = 0;
	ret = FUNC3(sc, IWM_BINDING_CONTEXT_CMD,
	    sizeof(cmd), &cmd, &status);
	if (ret) {
		FUNC1(sc->sc_dev,
		    "Failed to send binding (action:%d): %d\n", action, ret);
		return ret;
	}

	if (status) {
		FUNC1(sc->sc_dev,
		    "Binding command failed: %u\n", status);
		ret = EIO;
	}

	return ret;
}