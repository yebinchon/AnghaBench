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
typedef  int /*<<< orphan*/  xvfsp ;
struct xvfsconf {int /*<<< orphan*/ * vfc_next; int /*<<< orphan*/ * vfc_vfsops; int /*<<< orphan*/  vfc_flags; int /*<<< orphan*/  vfc_refcount; int /*<<< orphan*/  vfc_typenum; int /*<<< orphan*/  vfc_name; } ;
struct vfsconf {int /*<<< orphan*/  vfc_flags; int /*<<< orphan*/  vfc_refcount; int /*<<< orphan*/  vfc_typenum; int /*<<< orphan*/  vfc_name; } ;
struct sysctl_req {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct sysctl_req*,struct xvfsconf*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct xvfsconf*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC3(struct sysctl_req *req, struct vfsconf *vfsp)
{
	struct xvfsconf xvfsp;

	FUNC1(&xvfsp, sizeof(xvfsp));
	FUNC2(xvfsp.vfc_name, vfsp->vfc_name);
	xvfsp.vfc_typenum = vfsp->vfc_typenum;
	xvfsp.vfc_refcount = vfsp->vfc_refcount;
	xvfsp.vfc_flags = vfsp->vfc_flags;
	/*
	 * These are unused in userland, we keep them
	 * to not break binary compatibility.
	 */
	xvfsp.vfc_vfsops = NULL;
	xvfsp.vfc_next = NULL;
	return (FUNC0(req, &xvfsp, sizeof(xvfsp)));
}