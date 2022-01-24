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
struct mfi_softc {int /*<<< orphan*/  mfi_evt_task; int /*<<< orphan*/  mfi_evt_queue; int /*<<< orphan*/  mfi_io_lock; } ;
struct mfi_evt_queue_elm {int /*<<< orphan*/  detail; } ;
struct mfi_evt_detail {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MA_OWNED ; 
 int /*<<< orphan*/  M_MFIBUF ; 
 int M_NOWAIT ; 
 int M_ZERO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct mfi_evt_queue_elm*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  link ; 
 struct mfi_evt_queue_elm* FUNC1 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct mfi_evt_detail*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  taskqueue_swi ; 

__attribute__((used)) static void
FUNC5(struct mfi_softc *sc, struct mfi_evt_detail *detail)
{
	struct mfi_evt_queue_elm *elm;

	FUNC3(&sc->mfi_io_lock, MA_OWNED);
	elm = FUNC1(sizeof(*elm), M_MFIBUF, M_NOWAIT|M_ZERO);
	if (elm == NULL)
		return;
	FUNC2(&elm->detail, detail, sizeof(*detail));
	FUNC0(&sc->mfi_evt_queue, elm, link);
	FUNC4(taskqueue_swi, &sc->mfi_evt_task);
}