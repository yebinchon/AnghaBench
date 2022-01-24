#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u_int ;
struct TYPE_5__ {int phys_nsegs; int bus_nsegs; uintptr_t phys_addr; uintptr_t bus_addr; int /*<<< orphan*/  flags; int /*<<< orphan*/  tag; } ;
struct TYPE_6__ {TYPE_1__ md; } ;
struct proto_ioc_busdma {int /*<<< orphan*/  key; int /*<<< orphan*/  request; TYPE_2__ u; int /*<<< orphan*/  result; } ;
struct TYPE_7__ {int /*<<< orphan*/  maxsz; } ;
struct TYPE_8__ {TYPE_3__ tag; } ;
struct obj {int refcnt; int oid; struct obj* parent; int /*<<< orphan*/  fd; int /*<<< orphan*/  key; TYPE_4__ u; } ;
typedef  int /*<<< orphan*/  ioc ;

/* Variables and functions */
 int /*<<< orphan*/  BUSDMA_MD_BUS ; 
 int /*<<< orphan*/  BUSDMA_MD_PHYS ; 
 int /*<<< orphan*/  BUSDMA_MD_VIRT ; 
 scalar_t__ MAP_FAILED ; 
 int MAP_NOCORE ; 
 int MAP_SHARED ; 
 int /*<<< orphan*/  OBJ_TYPE_MD ; 
 int /*<<< orphan*/  OBJ_TYPE_TAG ; 
 int /*<<< orphan*/  PROTO_IOC_BUSDMA ; 
 int /*<<< orphan*/  PROTO_IOC_BUSDMA_MEM_ALLOC ; 
 int /*<<< orphan*/  PROTO_IOC_BUSDMA_MEM_FREE ; 
 int PROT_READ ; 
 int PROT_WRITE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (struct obj*,int /*<<< orphan*/ ,uintptr_t,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct proto_ioc_busdma*) ; 
 int /*<<< orphan*/  FUNC3 (struct proto_ioc_busdma*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,uintptr_t) ; 
 struct obj* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct obj*) ; 
 struct obj* FUNC7 (int,int /*<<< orphan*/ ) ; 

int
FUNC8(int tid, u_int flags)
{
	struct proto_ioc_busdma ioc;
	struct obj *md, *tag;
	uintptr_t addr;
	int error;

	tag = FUNC7(tid, OBJ_TYPE_TAG);
	if (tag == NULL)
		return (-1);

	md = FUNC5(OBJ_TYPE_MD);
	if (md == NULL)
		return (-1);

	FUNC3(&ioc, 0, sizeof(ioc));
	ioc.request = PROTO_IOC_BUSDMA_MEM_ALLOC;
	ioc.u.md.tag = tag->key;
	ioc.u.md.flags = flags;
	if (FUNC2(tag->fd, PROTO_IOC_BUSDMA, &ioc) == -1) {
		FUNC6(md);
		return (-1);
	}

	md->refcnt = 1;
	md->fd = tag->fd;
	md->parent = tag;
	tag->refcnt++;
	md->key = ioc.result;

	/* XXX we need to support multiple segments */
	FUNC0(ioc.u.md.phys_nsegs == 1);
	FUNC0(ioc.u.md.bus_nsegs == 1);
	error = FUNC1(md, BUSDMA_MD_PHYS, ioc.u.md.phys_addr,
	    tag->u.tag.maxsz);
	error = FUNC1(md, BUSDMA_MD_BUS, ioc.u.md.bus_addr,
	    tag->u.tag.maxsz);

	addr = (uintptr_t)FUNC4(NULL, tag->u.tag.maxsz, PROT_READ | PROT_WRITE,
	    MAP_NOCORE | MAP_SHARED, md->fd, ioc.u.md.phys_addr);
	if (addr == (uintptr_t)MAP_FAILED)
		goto fail;
	error = FUNC1(md, BUSDMA_MD_VIRT, addr, tag->u.tag.maxsz);

	return (md->oid);

 fail:
	FUNC3(&ioc, 0, sizeof(ioc));
	ioc.request = PROTO_IOC_BUSDMA_MEM_FREE;
	ioc.key = md->key;
	FUNC2(md->fd, PROTO_IOC_BUSDMA, &ioc);
	md->parent->refcnt--;
	FUNC6(md);
	return (-1);
}