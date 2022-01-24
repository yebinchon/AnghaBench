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
struct proto_tag {int bndry; int maxaddr; int maxsz; int maxsegsz; int nsegs; int datarate; int /*<<< orphan*/  align; int /*<<< orphan*/  children; struct proto_tag* parent; } ;
struct TYPE_3__ {int bndry; int maxsegsz; int maxsz; int nsegs; int maxaddr; int datarate; int /*<<< orphan*/  align; } ;
struct TYPE_4__ {TYPE_1__ tag; } ;
struct proto_ioc_busdma {uintptr_t result; TYPE_2__ u; } ;
struct proto_busdma {int /*<<< orphan*/  tags; } ;

/* Variables and functions */
 int FUNC0 (int,int) ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct proto_tag*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* FUNC3 (int,int) ; 
 int /*<<< orphan*/  M_PROTO_BUSDMA ; 
 int M_WAITOK ; 
 int M_ZERO ; 
 struct proto_tag* FUNC4 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  peers ; 
 int /*<<< orphan*/  tags ; 

__attribute__((used)) static int
FUNC5(struct proto_busdma *busdma, struct proto_tag *parent,
    struct proto_ioc_busdma *ioc)
{
	struct proto_tag *tag;

	/* Make sure that when a boundary is specified, it's a power of 2 */
	if (ioc->u.tag.bndry != 0 &&
	    (ioc->u.tag.bndry & (ioc->u.tag.bndry - 1)) != 0)
		return (EINVAL);

	/*
	 * If nsegs is 1, ignore maxsegsz. What this means is that if we have
	 * just 1 segment, then maxsz should be equal to maxsegsz. To keep it
	 * simple for us, limit maxsegsz to maxsz in any case.
	 */
	if (ioc->u.tag.maxsegsz > ioc->u.tag.maxsz || ioc->u.tag.nsegs == 1)
		ioc->u.tag.maxsegsz = ioc->u.tag.maxsz;

	tag = FUNC4(sizeof(*tag), M_PROTO_BUSDMA, M_WAITOK | M_ZERO);
	if (parent != NULL) {
		tag->parent = parent;
		FUNC1(&parent->children, tag, peers);
		tag->align = FUNC2(ioc->u.tag.align, parent->align);
		tag->bndry = FUNC0(ioc->u.tag.bndry, parent->bndry);
		tag->maxaddr = FUNC3(ioc->u.tag.maxaddr, parent->maxaddr);
		tag->maxsz = FUNC3(ioc->u.tag.maxsz, parent->maxsz);
		tag->maxsegsz = FUNC3(ioc->u.tag.maxsegsz, parent->maxsegsz);
		tag->nsegs = FUNC3(ioc->u.tag.nsegs, parent->nsegs);
		tag->datarate = FUNC3(ioc->u.tag.datarate, parent->datarate);
		/* Write constraints back */
		ioc->u.tag.align = tag->align;
		ioc->u.tag.bndry = tag->bndry;
		ioc->u.tag.maxaddr = tag->maxaddr;
		ioc->u.tag.maxsz = tag->maxsz;
		ioc->u.tag.maxsegsz = tag->maxsegsz;
		ioc->u.tag.nsegs = tag->nsegs;
		ioc->u.tag.datarate = tag->datarate;
	} else {
		tag->align = ioc->u.tag.align;
		tag->bndry = ioc->u.tag.bndry;
		tag->maxaddr = ioc->u.tag.maxaddr;
		tag->maxsz = ioc->u.tag.maxsz;
		tag->maxsegsz = ioc->u.tag.maxsegsz;
		tag->nsegs = ioc->u.tag.nsegs;
		tag->datarate = ioc->u.tag.datarate;
	}
	FUNC1(&busdma->tags, tag, tags);
	ioc->result = (uintptr_t)(void *)tag;
	return (0);
}