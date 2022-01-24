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
struct smbnode {char* n_rpath; int n_rplen; } ;
struct smbfattr {int dummy; } ;
struct mount {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct smbnode*) ; 
 struct smbnode* FUNC2 (struct vnode*) ; 
 int /*<<< orphan*/  FUNC3 (struct vnode*,struct smbfattr*) ; 
 int FUNC4 (struct mount*,struct vnode*,char*,int,char const*,int,int,struct smbfattr*,struct vnode**) ; 

int
FUNC5(struct mount *mp, struct vnode *dvp, const char *name, int nmlen,
	struct smbfattr *fap, struct vnode **vpp)
{
	struct smbnode *dnp, *np;
	struct vnode *vp;
	int error, sep;

	dnp = (dvp) ? FUNC2(dvp) : NULL;
	sep = 0;
	if (dnp != NULL) {
		sep = FUNC1(dnp); 
		error = FUNC4(mp, dvp, dnp->n_rpath, dnp->n_rplen, 
		    name, nmlen, sep, fap, &vp); 
	} else
		error = FUNC4(mp, NULL, "\\", 1, name, nmlen, 
		    sep, fap, &vp); 
	if (error)
		return error;
	FUNC0(vp != NULL);
	np = FUNC2(vp);
	if (fap)
		FUNC3(vp, fap);
	*vpp = vp;
	return 0;
}