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
struct vnode {int dummy; } ;
struct pnfsdsattr {int /*<<< orphan*/  dsa_mtime; int /*<<< orphan*/  dsa_atime; int /*<<< orphan*/  dsa_size; int /*<<< orphan*/  dsa_filerev; } ;
struct nfsvattr {int /*<<< orphan*/  na_mtime; int /*<<< orphan*/  na_atime; int /*<<< orphan*/  na_size; int /*<<< orphan*/  na_filerev; } ;
typedef  int /*<<< orphan*/  dsattr ;
typedef  int /*<<< orphan*/  NFSPROC_T ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct vnode*,char*) ; 
 int /*<<< orphan*/  EXTATTR_NAMESPACE_SYSTEM ; 
 int /*<<< orphan*/  IO_NODELOCKED ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int FUNC2 (struct vnode*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int,char*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC3(struct vnode *vp, struct nfsvattr *nap, NFSPROC_T *p)
{
	struct pnfsdsattr dsattr;
	int error;

	FUNC0(vp, "nfsrv_setextattr vp");
	dsattr.dsa_filerev = nap->na_filerev;
	dsattr.dsa_size = nap->na_size;
	dsattr.dsa_atime = nap->na_atime;
	dsattr.dsa_mtime = nap->na_mtime;
	error = FUNC2(vp, IO_NODELOCKED, EXTATTR_NAMESPACE_SYSTEM,
	    "pnfsd.dsattr", sizeof(dsattr), (char *)&dsattr, p);
	if (error != 0)
		FUNC1("pNFS: setextattr=%d\n", error);
	return (error);
}