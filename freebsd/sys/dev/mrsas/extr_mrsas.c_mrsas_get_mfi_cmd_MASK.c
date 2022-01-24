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
struct mrsas_softc {int /*<<< orphan*/  mfi_cmd_pool_lock; int /*<<< orphan*/  mrsas_mfi_cmd_list_head; } ;
struct mrsas_mfi_cmd {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct mrsas_mfi_cmd* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct mrsas_mfi_cmd*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  next ; 

struct mrsas_mfi_cmd *
FUNC5(struct mrsas_softc *sc)
{
	struct mrsas_mfi_cmd *cmd = NULL;

	FUNC3(&sc->mfi_cmd_pool_lock);
	if (!FUNC0(&sc->mrsas_mfi_cmd_list_head)) {
		cmd = FUNC1(&sc->mrsas_mfi_cmd_list_head);
		FUNC2(&sc->mrsas_mfi_cmd_list_head, cmd, next);
	}
	FUNC4(&sc->mfi_cmd_pool_lock);

	return cmd;
}