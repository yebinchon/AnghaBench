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
struct set_loopback {size_t vf_id; int /*<<< orphan*/  enable; } ;
struct nicpf {int /*<<< orphan*/  node; int /*<<< orphan*/ * vf_lmac_map; } ;

/* Variables and functions */
 int ENXIO ; 
 size_t MAX_LMAC ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC3(struct nicpf *nic, struct set_loopback *lbk)
{
	int bgx_idx, lmac_idx;

	if (lbk->vf_id > MAX_LMAC)
		return (ENXIO);

	bgx_idx = FUNC0(nic->vf_lmac_map[lbk->vf_id]);
	lmac_idx = FUNC1(nic->vf_lmac_map[lbk->vf_id]);

	FUNC2(nic->node, bgx_idx, lmac_idx, lbk->enable);

	return (0);
}