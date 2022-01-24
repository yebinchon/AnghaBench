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
typedef  int /*<<< orphan*/  vm_paddr_t ;
struct sgsave {int dummy; } ;
struct sglist_seg {size_t ss_len; int /*<<< orphan*/  ss_paddr; } ;
struct sglist {scalar_t__ sg_maxseg; int sg_nseg; struct sglist_seg* sg_segs; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct sglist*,struct sgsave) ; 
 int /*<<< orphan*/  FUNC1 (struct sglist*,struct sgsave) ; 
 int FUNC2 (struct sglist*,struct sglist_seg**,int /*<<< orphan*/ ,size_t) ; 

int
FUNC3(struct sglist *sg, vm_paddr_t paddr, size_t len)
{
	struct sglist_seg *ss;
	struct sgsave save;
	int error;

	if (sg->sg_maxseg == 0)
		return (EINVAL);
	if (len == 0)
		return (0);

	if (sg->sg_nseg == 0) {
		sg->sg_segs[0].ss_paddr = paddr;
		sg->sg_segs[0].ss_len = len;
		sg->sg_nseg = 1;
		return (0);
	}
	ss = &sg->sg_segs[sg->sg_nseg - 1];
	FUNC1(sg, save);
	error = FUNC2(sg, &ss, paddr, len);
	if (error)
		FUNC0(sg, save);
	return (error);
}