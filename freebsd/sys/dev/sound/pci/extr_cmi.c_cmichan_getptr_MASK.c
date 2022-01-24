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
typedef  int u_int32_t ;
struct sc_info {int /*<<< orphan*/  lock; } ;
struct sc_chinfo {scalar_t__ dir; int phys_buf; int bps; int /*<<< orphan*/  buffer; struct sc_info* parent; } ;
typedef  int /*<<< orphan*/  kobj_t ;

/* Variables and functions */
 int /*<<< orphan*/  CMPCI_REG_DMA0_BASE ; 
 int /*<<< orphan*/  CMPCI_REG_DMA1_BASE ; 
 scalar_t__ PCMDIR_PLAY ; 
 int FUNC0 (struct sc_info*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static u_int32_t
FUNC4(kobj_t obj, void *data)
{
	struct sc_chinfo	*ch = data;
	struct sc_info		*sc = ch->parent;
	u_int32_t physptr, bufptr, sz;

	FUNC1(sc->lock);
	if (ch->dir == PCMDIR_PLAY) {
		physptr = FUNC0(sc, CMPCI_REG_DMA0_BASE, 4);
	} else {
		physptr = FUNC0(sc, CMPCI_REG_DMA1_BASE, 4);
	}
	FUNC2(sc->lock);

	sz = FUNC3(ch->buffer);
	bufptr = (physptr - ch->phys_buf + sz - ch->bps) % sz;

	return bufptr;
}