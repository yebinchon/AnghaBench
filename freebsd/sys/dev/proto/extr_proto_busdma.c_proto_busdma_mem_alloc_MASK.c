#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct proto_tag {int /*<<< orphan*/  maxsz; int /*<<< orphan*/  mds; int /*<<< orphan*/  maxsegsz; int /*<<< orphan*/  nsegs; int /*<<< orphan*/  maxaddr; int /*<<< orphan*/  bndry; int /*<<< orphan*/  align; } ;
struct proto_md {int /*<<< orphan*/  physaddr; scalar_t__ virtaddr; int /*<<< orphan*/  bd_tag; int /*<<< orphan*/  bd_map; struct proto_tag* tag; } ;
struct TYPE_3__ {uintptr_t virt_addr; int phys_nsegs; int /*<<< orphan*/  phys_addr; int /*<<< orphan*/  virt_size; } ;
struct TYPE_4__ {TYPE_1__ md; } ;
struct proto_ioc_busdma {uintptr_t result; TYPE_2__ u; } ;
struct proto_callback_bundle {struct proto_ioc_busdma* ioc; struct proto_md* md; struct proto_busdma* busdma; } ;
struct proto_busdma {int /*<<< orphan*/  mds; int /*<<< orphan*/  bd_roottag; } ;

/* Variables and functions */
 int /*<<< orphan*/  BUS_DMA_NOWAIT ; 
 int /*<<< orphan*/  BUS_SPACE_MAXADDR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct proto_md*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  M_PROTO_BUSDMA ; 
 int M_WAITOK ; 
 int M_ZERO ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct proto_callback_bundle*,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,scalar_t__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct proto_md*,int /*<<< orphan*/ ) ; 
 struct proto_md* FUNC7 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  mds ; 
 int /*<<< orphan*/  peers ; 
 int /*<<< orphan*/  FUNC8 (uintptr_t) ; 
 int /*<<< orphan*/  proto_busdma_mem_alloc_callback ; 

__attribute__((used)) static int
FUNC9(struct proto_busdma *busdma, struct proto_tag *tag,
    struct proto_ioc_busdma *ioc)
{
	struct proto_callback_bundle pcb;
	struct proto_md *md;
	int error;

	md = FUNC7(sizeof(*md), M_PROTO_BUSDMA, M_WAITOK | M_ZERO);
	md->tag = tag;

	error = FUNC1(busdma->bd_roottag, tag->align, tag->bndry,
	    tag->maxaddr, BUS_SPACE_MAXADDR, NULL, NULL, tag->maxsz,
	    tag->nsegs, tag->maxsegsz, 0, NULL, NULL, &md->bd_tag);
	if (error) {
		FUNC6(md, M_PROTO_BUSDMA);
		return (error);
	}
	error = FUNC4(md->bd_tag, &md->virtaddr, 0, &md->bd_map);
	if (error) {
		FUNC2(md->bd_tag);
		FUNC6(md, M_PROTO_BUSDMA);
		return (error);
	}
	md->physaddr = FUNC8((uintptr_t)(md->virtaddr));
	pcb.busdma = busdma;
	pcb.md = md;
	pcb.ioc = ioc;
	error = FUNC3(md->bd_tag, md->bd_map, md->virtaddr,
	    tag->maxsz, proto_busdma_mem_alloc_callback, &pcb, BUS_DMA_NOWAIT);
	if (error) {
		FUNC5(md->bd_tag, md->virtaddr, md->bd_map);
		FUNC2(md->bd_tag);
		FUNC6(md, M_PROTO_BUSDMA);
		return (error);
	}
	FUNC0(&tag->mds, md, peers);
	FUNC0(&busdma->mds, md, mds);
	ioc->u.md.virt_addr = (uintptr_t)md->virtaddr;
	ioc->u.md.virt_size = tag->maxsz;
	ioc->u.md.phys_nsegs = 1;
	ioc->u.md.phys_addr = md->physaddr;
	ioc->result = (uintptr_t)(void *)md;
	return (0);
}