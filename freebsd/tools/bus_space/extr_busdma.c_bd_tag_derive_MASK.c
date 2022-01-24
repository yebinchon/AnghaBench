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
typedef  int /*<<< orphan*/  u_long ;
typedef  int /*<<< orphan*/  u_int ;
struct obj {int oid; int /*<<< orphan*/  refcnt; int /*<<< orphan*/  fd; } ;

/* Variables and functions */
 int /*<<< orphan*/  OBJ_TYPE_TAG ; 
 struct obj* FUNC0 (struct obj*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct obj* FUNC1 (int,int /*<<< orphan*/ ) ; 

int
FUNC2(int ptid, u_long align, u_long bndry, u_long maxaddr,
    u_long maxsz, u_int nsegs, u_long maxsegsz, u_int datarate, u_int flags)
{
	struct obj *ptag, *tag;

	ptag = FUNC1(ptid, OBJ_TYPE_TAG);
	if (ptag == NULL)
		return (-1);

	tag = FUNC0(ptag, ptag->fd, align, bndry, maxaddr, maxsz, nsegs,
	    maxsegsz, datarate, flags);
	if (tag == NULL)
		return (-1);
	ptag->refcnt++;
	return (tag->oid);
}