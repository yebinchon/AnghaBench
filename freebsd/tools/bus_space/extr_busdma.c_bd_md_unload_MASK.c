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
struct proto_ioc_busdma {int /*<<< orphan*/  key; int /*<<< orphan*/  request; } ;
struct obj {int /*<<< orphan*/  fd; int /*<<< orphan*/  key; } ;
typedef  int /*<<< orphan*/  ioc ;

/* Variables and functions */
 int /*<<< orphan*/  BUSDMA_MD_BUS ; 
 int /*<<< orphan*/  BUSDMA_MD_PHYS ; 
 int /*<<< orphan*/  BUSDMA_MD_VIRT ; 
 int /*<<< orphan*/  OBJ_TYPE_MD ; 
 int /*<<< orphan*/  PROTO_IOC_BUSDMA ; 
 int /*<<< orphan*/  PROTO_IOC_BUSDMA_MD_UNLOAD ; 
 int /*<<< orphan*/  FUNC0 (struct obj*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int errno ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct proto_ioc_busdma*) ; 
 int /*<<< orphan*/  FUNC2 (struct proto_ioc_busdma*,int /*<<< orphan*/ ,int) ; 
 struct obj* FUNC3 (int,int /*<<< orphan*/ ) ; 

int
FUNC4(int mdid)
{
	struct proto_ioc_busdma ioc;
	struct obj *md;
	int error;

	md = FUNC3(mdid, OBJ_TYPE_MD);
	if (md == NULL)
		return (errno);

	FUNC2(&ioc, 0, sizeof(ioc));
	ioc.request = PROTO_IOC_BUSDMA_MD_UNLOAD;
	ioc.key = md->key;
	if (FUNC1(md->fd, PROTO_IOC_BUSDMA, &ioc) == -1)
		return (errno);

	FUNC0(md, BUSDMA_MD_VIRT, 0);
	FUNC0(md, BUSDMA_MD_PHYS, 0);
	FUNC0(md, BUSDMA_MD_BUS, 0);
	return (0);
}