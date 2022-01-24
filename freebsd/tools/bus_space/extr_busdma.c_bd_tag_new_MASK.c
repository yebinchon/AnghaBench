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
typedef  void* u_long ;
typedef  void* u_int ;
struct TYPE_7__ {void* datarate; void* nsegs; void* maxsegsz; void* maxsz; void* maxaddr; void* bndry; void* align; void* flags; } ;
struct TYPE_8__ {TYPE_3__ tag; } ;
struct proto_ioc_busdma {TYPE_4__ u; int /*<<< orphan*/  result; int /*<<< orphan*/  key; int /*<<< orphan*/  request; } ;
struct TYPE_5__ {void* datarate; void* nsegs; void* maxsegsz; void* maxsz; void* maxaddr; void* bndry; void* align; } ;
struct TYPE_6__ {TYPE_1__ tag; } ;
struct obj {int refcnt; int fd; TYPE_2__ u; int /*<<< orphan*/  key; struct obj* parent; } ;
typedef  int /*<<< orphan*/  ioc ;

/* Variables and functions */
 int /*<<< orphan*/  OBJ_TYPE_TAG ; 
 int /*<<< orphan*/  PROTO_IOC_BUSDMA ; 
 int /*<<< orphan*/  PROTO_IOC_BUSDMA_TAG_CREATE ; 
 int /*<<< orphan*/  PROTO_IOC_BUSDMA_TAG_DERIVE ; 
 int FUNC0 (int,int /*<<< orphan*/ ,struct proto_ioc_busdma*) ; 
 int /*<<< orphan*/  FUNC1 (struct proto_ioc_busdma*,int /*<<< orphan*/ ,int) ; 
 struct obj* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct obj*) ; 

__attribute__((used)) static struct obj *
FUNC4(struct obj *ptag, int fd, u_long align, u_long bndry,
    u_long maxaddr, u_long maxsz, u_int nsegs, u_long maxsegsz,
    u_int datarate, u_int flags)
{
	struct proto_ioc_busdma ioc;
	struct obj *tag;

	tag = FUNC2(OBJ_TYPE_TAG);
	if (tag == NULL)
		return (NULL);

	FUNC1(&ioc, 0, sizeof(ioc));
	ioc.request = (ptag != NULL) ? PROTO_IOC_BUSDMA_TAG_DERIVE :
	    PROTO_IOC_BUSDMA_TAG_CREATE;
	ioc.key = (ptag != NULL) ? ptag->key : 0;
	ioc.u.tag.align = align;
	ioc.u.tag.bndry = bndry;
	ioc.u.tag.maxaddr = maxaddr;
	ioc.u.tag.maxsz = maxsz;
	ioc.u.tag.nsegs = nsegs;
	ioc.u.tag.maxsegsz = maxsegsz;
	ioc.u.tag.datarate = datarate;
	ioc.u.tag.flags = flags;
	if (FUNC0(fd, PROTO_IOC_BUSDMA, &ioc) == -1) {
		FUNC3(tag);
		return (NULL);
	}
	tag->refcnt = 1;
	tag->fd = fd;
	tag->parent = ptag;
	tag->key = ioc.result;
	tag->u.tag.align = ioc.u.tag.align;
	tag->u.tag.bndry = ioc.u.tag.bndry;
	tag->u.tag.maxaddr = ioc.u.tag.maxaddr;
	tag->u.tag.maxsz = ioc.u.tag.maxsz;
	tag->u.tag.maxsegsz = ioc.u.tag.maxsegsz;
	tag->u.tag.nsegs = ioc.u.tag.nsegs;
	tag->u.tag.datarate = ioc.u.tag.datarate;
	return (tag);
}