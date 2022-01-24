#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
struct ecore_queue_sp_obj {int dummy; } ;
struct bxe_softc {TYPE_1__* sp_objs; } ;
struct TYPE_2__ {struct ecore_queue_sp_obj q_obj; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bxe_softc*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 size_t FUNC1 (int /*<<< orphan*/ ,struct bxe_softc*) ; 
 int /*<<< orphan*/  DBG_SP ; 

__attribute__((used)) static inline struct ecore_queue_sp_obj *
FUNC2(struct bxe_softc *sc,
                 uint32_t         cid)
{
    FUNC0(sc, DBG_SP, "retrieving fp from cid %d\n", cid);
    return (&sc->sp_objs[FUNC1(cid, sc)].q_obj);
}