#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct proto_ioc_busdma {int /*<<< orphan*/  key; int /*<<< orphan*/  request; } ;
struct obj {TYPE_1__* parent; int /*<<< orphan*/  fd; int /*<<< orphan*/  key; } ;
typedef  int /*<<< orphan*/  ioc ;
struct TYPE_2__ {int /*<<< orphan*/  refcnt; } ;

/* Variables and functions */
 int /*<<< orphan*/  OBJ_TYPE_MD ; 
 int /*<<< orphan*/  PROTO_IOC_BUSDMA ; 
 int /*<<< orphan*/  PROTO_IOC_BUSDMA_MD_DESTROY ; 
 int errno ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct proto_ioc_busdma*) ; 
 int /*<<< orphan*/  FUNC1 (struct proto_ioc_busdma*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct obj*) ; 
 struct obj* FUNC3 (int,int /*<<< orphan*/ ) ; 

int
FUNC4(int mdid)
{
	struct proto_ioc_busdma ioc;
	struct obj *md;

	md = FUNC3(mdid, OBJ_TYPE_MD);
	if (md == NULL)
		return (errno);

	FUNC1(&ioc, 0, sizeof(ioc));
	ioc.request = PROTO_IOC_BUSDMA_MD_DESTROY;
	ioc.key = md->key;
	if (FUNC0(md->fd, PROTO_IOC_BUSDMA, &ioc) == -1)
		return (errno);

	md->parent->refcnt--;
	FUNC2(md);
	return (0);
}