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
typedef  scalar_t__ u_int32_t ;
struct sc_info {int /*<<< orphan*/  dmaa_sh; int /*<<< orphan*/  dmaa_st; } ;
struct sc_chinfo {int /*<<< orphan*/  buffer; struct sc_info* parent; } ;
typedef  int /*<<< orphan*/  kobj_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static u_int32_t
FUNC2(kobj_t obj, void *data)
{
	struct sc_chinfo	*ch = data;
	struct sc_info 		*sc = ch->parent;
	u_int32_t sz, remain;

	sz = FUNC0(ch->buffer);
	/* DMAA uses bytes */
	remain = FUNC1(sc->dmaa_st, sc->dmaa_sh) + 1;
	return (sz - remain);
}