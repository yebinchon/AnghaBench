#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vm_paddr_t ;
typedef  int /*<<< orphan*/  vm_ooffset_t ;
typedef  int /*<<< orphan*/  vm_memattr_t ;
struct tty {int dummy; } ;
struct TYPE_5__ {TYPE_1__* sc; } ;
typedef  TYPE_2__ scr_stat ;
struct TYPE_4__ {int /*<<< orphan*/  adp; TYPE_2__* cur_scp; } ;

/* Variables and functions */
 TYPE_2__* FUNC0 (struct tty*) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC2(struct tty *tp, vm_ooffset_t offset, vm_paddr_t *paddr,
    int nprot, vm_memattr_t *memattr)
{
    scr_stat *scp;

    scp = FUNC0(tp);
    if (scp != scp->sc->cur_scp)
	return -1;
    return FUNC1(scp->sc->adp, offset, paddr, nprot, memattr);
}