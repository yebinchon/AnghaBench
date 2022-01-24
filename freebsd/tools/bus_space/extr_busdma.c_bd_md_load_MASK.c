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
typedef  int /*<<< orphan*/  u_long ;
typedef  int /*<<< orphan*/  u_int ;
struct TYPE_3__ {uintptr_t virt_addr; uintptr_t phys_addr; uintptr_t bus_addr; int /*<<< orphan*/  virt_size; int /*<<< orphan*/  flags; } ;
struct TYPE_4__ {TYPE_1__ md; } ;
struct proto_ioc_busdma {TYPE_2__ u; int /*<<< orphan*/  key; int /*<<< orphan*/  request; } ;
struct obj {int /*<<< orphan*/  fd; int /*<<< orphan*/  key; } ;
typedef  int /*<<< orphan*/  ioc ;

/* Variables and functions */
 int /*<<< orphan*/  BUSDMA_MD_BUS ; 
 int /*<<< orphan*/  BUSDMA_MD_PHYS ; 
 int /*<<< orphan*/  BUSDMA_MD_VIRT ; 
 int /*<<< orphan*/  OBJ_TYPE_MD ; 
 int /*<<< orphan*/  PROTO_IOC_BUSDMA ; 
 int /*<<< orphan*/  PROTO_IOC_BUSDMA_MD_LOAD ; 
 int FUNC0 (struct obj*,int /*<<< orphan*/ ,uintptr_t,int /*<<< orphan*/ ) ; 
 int errno ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct proto_ioc_busdma*) ; 
 int /*<<< orphan*/  FUNC2 (struct proto_ioc_busdma*,int /*<<< orphan*/ ,int) ; 
 struct obj* FUNC3 (int,int /*<<< orphan*/ ) ; 

int
FUNC4(int mdid, void *buf, u_long len, u_int flags)
{
	struct proto_ioc_busdma ioc;
	struct obj *md;
	int error;

	md = FUNC3(mdid, OBJ_TYPE_MD);
	if (md == NULL)
		return (errno);

	FUNC2(&ioc, 0, sizeof(ioc));
	ioc.request = PROTO_IOC_BUSDMA_MD_LOAD;
	ioc.key = md->key;
	ioc.u.md.flags = flags;
	ioc.u.md.virt_addr = (uintptr_t)buf;
	ioc.u.md.virt_size = len;
	if (FUNC1(md->fd, PROTO_IOC_BUSDMA, &ioc) == -1)
		return (errno);

	error = FUNC0(md, BUSDMA_MD_VIRT, ioc.u.md.virt_addr, len);
	error = FUNC0(md, BUSDMA_MD_PHYS, ioc.u.md.phys_addr, len);
	error = FUNC0(md, BUSDMA_MD_BUS, ioc.u.md.bus_addr, len);
	return (error);
}