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
typedef  int uint32_t ;
struct via_info {int /*<<< orphan*/  lock; } ;
struct via_chinfo {int rbase; struct via_info* parent; } ;
typedef  int /*<<< orphan*/  kobj_t ;

/* Variables and functions */
 int VIA8233_DXS_RATEFMT_48K ; 
 int VIA8233_RP_DXS_RATEFMT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct via_info*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct via_info*,int,int,int) ; 

__attribute__((used)) static uint32_t
FUNC4(kobj_t obj, void *data, uint32_t speed)
{
	struct via_chinfo *ch = data;
	struct via_info *via = ch->parent;
	uint32_t r, v;

	r = ch->rbase + VIA8233_RP_DXS_RATEFMT;
	FUNC0(via->lock);
	v = FUNC2(via, r, 4) & ~VIA8233_DXS_RATEFMT_48K;

	/* Careful to avoid overflow (divide by 48 per vt8233c docs) */

	v |= VIA8233_DXS_RATEFMT_48K * (speed / 48) / (48000 / 48);
	FUNC3(via, r, v, 4);
	FUNC1(via->lock);

	return (speed);
}