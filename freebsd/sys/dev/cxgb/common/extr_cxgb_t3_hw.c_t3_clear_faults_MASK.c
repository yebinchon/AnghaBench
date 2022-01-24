#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct cmac {scalar_t__ offset; } ;
struct port_info {int /*<<< orphan*/  port_id; struct cmac mac; } ;
struct TYPE_10__ {int nports; } ;
struct TYPE_11__ {TYPE_1__ params; } ;
typedef  TYPE_2__ adapter_t ;

/* Variables and functions */
 scalar_t__ A_XGM_INT_CAUSE ; 
 scalar_t__ A_XGM_INT_ENABLE ; 
 scalar_t__ A_XGM_INT_STATUS ; 
 int /*<<< orphan*/  F_XGM_INT ; 
 struct port_info* FUNC0 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(adapter_t *adapter, int port_id)
{
	struct port_info *pi = FUNC0(adapter, port_id);
	struct cmac *mac = &pi->mac;

	if (adapter->params.nports <= 2) {
		FUNC4(adapter, pi->port_id);
		FUNC1(adapter, A_XGM_INT_STATUS + mac->offset);
		FUNC3(adapter, A_XGM_INT_CAUSE + mac->offset, F_XGM_INT);
		FUNC2(adapter, A_XGM_INT_ENABLE + mac->offset,
				 F_XGM_INT, F_XGM_INT);
		FUNC5(adapter, pi->port_id);
	}
}