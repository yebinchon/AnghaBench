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
struct ecore_func_sp_drv_ops {int /*<<< orphan*/  (* reset_hw_port ) (struct bxe_softc*) ;} ;
struct bxe_softc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bxe_softc*,struct ecore_func_sp_drv_ops const*) ; 
 int /*<<< orphan*/  FUNC1 (struct bxe_softc*) ; 

__attribute__((used)) static inline void FUNC2(struct bxe_softc *sc,
					const struct ecore_func_sp_drv_ops *drv)
{
	drv->reset_hw_port(sc);
	FUNC0(sc, drv);
}