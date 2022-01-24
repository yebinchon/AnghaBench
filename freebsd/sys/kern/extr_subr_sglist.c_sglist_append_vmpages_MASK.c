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
typedef  int /*<<< orphan*/  vm_page_t ;
typedef  void* vm_paddr_t ;
struct sgsave {int dummy; } ;
struct sglist_seg {size_t ss_len; void* ss_paddr; } ;
struct sglist {scalar_t__ sg_maxseg; int sg_nseg; struct sglist_seg* sg_segs; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (struct sglist*,struct sgsave) ; 
 int /*<<< orphan*/  FUNC1 (struct sglist*,struct sgsave) ; 
 void* FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (struct sglist*,struct sglist_seg**,void*,size_t) ; 
 size_t FUNC4 (scalar_t__,size_t) ; 

int
FUNC5(struct sglist *sg, vm_page_t *m, size_t pgoff,
    size_t len)
{
	struct sgsave save;
	struct sglist_seg *ss;
	vm_paddr_t paddr;
	size_t seglen;
	int error, i;

	if (sg->sg_maxseg == 0)
		return (EINVAL);
	if (len == 0)
		return (0);

	FUNC1(sg, save);
	i = 0;
	if (sg->sg_nseg == 0) {
		seglen = FUNC4(PAGE_SIZE - pgoff, len);
		sg->sg_segs[0].ss_paddr = FUNC2(m[0]) + pgoff;
		sg->sg_segs[0].ss_len = seglen;
		sg->sg_nseg = 1;
		pgoff = 0;
		len -= seglen;
		i++;
	}
	ss = &sg->sg_segs[sg->sg_nseg - 1];
	for (; len > 0; i++, len -= seglen) {
		seglen = FUNC4(PAGE_SIZE - pgoff, len);
		paddr = FUNC2(m[i]) + pgoff;
		error = FUNC3(sg, &ss, paddr, seglen);
		if (error) {
			FUNC0(sg, save);
			return (error);
		}
		pgoff = 0;
	}
	return (0);
}