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
struct sc_info {int /*<<< orphan*/  dmac_sh; int /*<<< orphan*/  dmac_st; } ;
struct sc_chinfo {int /*<<< orphan*/  buffer; struct sc_info* parent; } ;
typedef  int /*<<< orphan*/  kobj_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static u_int32_t
FUNC2(kobj_t obj, void *data)
{
	struct sc_chinfo	*ch = data;
	struct sc_info 		*sc = ch->parent;
	u_int32_t sz, remain;

	sz = FUNC0(ch->buffer);
	/* DMAC uses words */
	remain = (FUNC1(sc->dmac_st, sc->dmac_sh) + 1) * 2;
	return sz - remain;
}