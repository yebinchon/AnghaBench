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
typedef  int /*<<< orphan*/  uid_t ;
typedef  int /*<<< orphan*/  u_int ;
struct vnode {int /*<<< orphan*/  v_mount; } ;
struct ucred {int dummy; } ;
struct thread {int dummy; } ;
struct nfsvattr {scalar_t__ na_type; } ;
struct nfsv4node {int dummy; } ;
struct nfsnode {struct nfsfh* n_fhp; struct nfsfh* n_v4; } ;
struct nfsfh {int n4_namelen; int nfh_len; int n4_fhlen; char* nfh_fh; int /*<<< orphan*/  n4_data; } ;
struct componentname {char* cn_nameptr; int cn_namelen; } ;
typedef  int /*<<< orphan*/  gid_t ;

/* Variables and functions */
 int ENOENT ; 
 int /*<<< orphan*/  FNV1_32_INIT ; 
 int /*<<< orphan*/  LK_EXCLUSIVE ; 
 int /*<<< orphan*/  M_NFSFH ; 
 int /*<<< orphan*/  M_NFSV4NODE ; 
 int /*<<< orphan*/  M_WAITOK ; 
 int /*<<< orphan*/  FUNC0 (struct nfsfh*) ; 
 scalar_t__ FUNC1 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,int) ; 
 struct vnode* FUNC3 (struct nfsnode*) ; 
 scalar_t__ FUNC4 (struct nfsnode*,char*,int) ; 
 scalar_t__ FUNC5 (struct vnode*) ; 
 int /*<<< orphan*/  FUNC6 (struct vnode*) ; 
 scalar_t__ VREG ; 
 struct nfsnode* FUNC7 (struct vnode*) ; 
 int /*<<< orphan*/  FUNC8 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC9 (char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct nfsfh*,int /*<<< orphan*/ ) ; 
 struct nfsfh* FUNC11 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct vnode**,struct nfsvattr*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int FUNC13 (struct thread*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC14 (int /*<<< orphan*/ ,struct vnode*,struct nfsfh*,struct componentname*,struct thread*,struct nfsnode**,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC15 (struct vnode*,char*,int,struct ucred*,struct thread*,struct nfsvattr*,struct nfsvattr*,struct nfsfh**,int*,int*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (char*,char*) ; 
 int /*<<< orphan*/  FUNC17 (struct vnode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (struct vnode*) ; 
 int /*<<< orphan*/  FUNC19 (struct vnode*) ; 

__attribute__((used)) static int
FUNC20(struct vnode *dvp, char *name, int len, struct ucred *cred,
    struct thread *td, struct nfsnode **npp)
{
	struct vnode *newvp = NULL, *vp;
	struct nfsnode *np, *dnp = FUNC7(dvp);
	struct nfsfh *nfhp, *onfhp;
	struct nfsvattr nfsva, dnfsva;
	struct componentname cn;
	int error = 0, attrflag, dattrflag;
	u_int hash;

	error = FUNC15(dvp, name, len, cred, td, &dnfsva, &nfsva,
	    &nfhp, &attrflag, &dattrflag, NULL);
	if (dattrflag)
		(void) FUNC12(&dvp, &dnfsva, NULL, NULL, 0, 1);
	if (npp && !error) {
		if (*npp != NULL) {
		    np = *npp;
		    vp = FUNC3(np);
		    /*
		     * For NFSv4, check to see if it is the same name and
		     * replace the name, if it is different.
		     */
		    if (np->n_v4 != NULL && nfsva.na_type == VREG &&
			(np->n_v4->n4_namelen != len ||
			 FUNC1(name, FUNC0(np->n_v4), len) ||
			 dnp->n_fhp->nfh_len != np->n_v4->n4_fhlen ||
			 FUNC1(dnp->n_fhp->nfh_fh, np->n_v4->n4_data,
			 dnp->n_fhp->nfh_len))) {
#ifdef notdef
{ char nnn[100]; int nnnl;
nnnl = (len < 100) ? len : 99;
bcopy(name, nnn, nnnl);
nnn[nnnl] = '\0';
printf("replace=%s\n",nnn);
}
#endif
			    FUNC10(np->n_v4, M_NFSV4NODE);
			    np->n_v4 = FUNC11(
				sizeof (struct nfsv4node) +
				dnp->n_fhp->nfh_len + len - 1,
				M_NFSV4NODE, M_WAITOK);
			    np->n_v4->n4_fhlen = dnp->n_fhp->nfh_len;
			    np->n_v4->n4_namelen = len;
			    FUNC2(dnp->n_fhp->nfh_fh, np->n_v4->n4_data,
				dnp->n_fhp->nfh_len);
			    FUNC2(name, FUNC0(np->n_v4), len);
		    }
		    hash = FUNC9(nfhp->nfh_fh, nfhp->nfh_len,
			FNV1_32_INIT);
		    onfhp = np->n_fhp;
		    /*
		     * Rehash node for new file handle.
		     */
		    FUNC17(vp, hash);
		    np->n_fhp = nfhp;
		    if (onfhp != NULL)
			FUNC10(onfhp, M_NFSFH);
		    newvp = FUNC3(np);
		} else if (FUNC4(dnp, nfhp->nfh_fh, nfhp->nfh_len)) {
		    FUNC10(nfhp, M_NFSFH);
		    FUNC6(dvp);
		    newvp = dvp;
		} else {
		    cn.cn_nameptr = name;
		    cn.cn_namelen = len;
		    error = FUNC14(dvp->v_mount, dvp, nfhp, &cn, td,
			&np, NULL, LK_EXCLUSIVE);
		    if (error)
			return (error);
		    newvp = FUNC3(np);
		}
		if (!attrflag && *npp == NULL) {
			if (newvp == dvp)
				FUNC19(newvp);
			else
				FUNC18(newvp);
			return (ENOENT);
		}
		if (attrflag)
			(void) FUNC12(&newvp, &nfsva, NULL, NULL,
			    0, 1);
	}
	if (npp && *npp == NULL) {
		if (error) {
			if (newvp) {
				if (newvp == dvp)
					FUNC19(newvp);
				else
					FUNC18(newvp);
			}
		} else
			*npp = np;
	}
	if (error && FUNC5(dvp))
		error = FUNC13(td, error, (uid_t)0, (gid_t)0);
	return (error);
}