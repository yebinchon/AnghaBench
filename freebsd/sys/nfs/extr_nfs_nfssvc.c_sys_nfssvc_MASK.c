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
struct thread {int dummy; } ;
struct nfssvc_args {int flag; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int EINTR ; 
 int EINVAL ; 
 int ERESTART ; 
 int /*<<< orphan*/  Giant ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int NFSSVC_ADDSOCK ; 
 int NFSSVC_ADMINREVOKE ; 
 int NFSSVC_BACKUPSTABLE ; 
 int NFSSVC_CBADDSOCK ; 
 int NFSSVC_DUMPCLIENTS ; 
 int NFSSVC_DUMPLOCKS ; 
 int NFSSVC_DUMPMNTOPTS ; 
 int NFSSVC_FORCEDISM ; 
 int NFSSVC_GETSTATS ; 
 int NFSSVC_GSSDADDFIRST ; 
 int NFSSVC_GSSDADDPORT ; 
 int NFSSVC_GSSDDELETEALL ; 
 int NFSSVC_IDNAME ; 
 int NFSSVC_NFSCBD ; 
 int NFSSVC_NFSD ; 
 int NFSSVC_NFSDADDSOCK ; 
 int NFSSVC_NFSDNFSD ; 
 int NFSSVC_NFSUSERDDELPORT ; 
 int NFSSVC_NFSUSERDPORT ; 
 int NFSSVC_NOPUBLICFH ; 
 int NFSSVC_OLDNFSD ; 
 int NFSSVC_PNFSDS ; 
 int NFSSVC_PUBLICFH ; 
 int NFSSVC_RESUMENFSD ; 
 int NFSSVC_STABLERESTART ; 
 int NFSSVC_SUSPENDNFSD ; 
 int NFSSVC_V4ROOTEXPORT ; 
 int /*<<< orphan*/  PRIV_NFS_DAEMON ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (struct thread*,struct nfssvc_args*) ; 
 int FUNC4 (struct thread*,struct nfssvc_args*) ; 
 int FUNC5 (struct thread*,struct nfssvc_args*) ; 
 int FUNC6 (struct thread*,struct nfssvc_args*) ; 
 int FUNC7 (struct thread*,int /*<<< orphan*/ ) ; 
 int FUNC8 (struct thread*,struct nfssvc_args*) ; 
 int FUNC9 (struct thread*,struct nfssvc_args*) ; 
 int FUNC10 (struct thread*,struct nfssvc_args*) ; 
 int FUNC11 (struct thread*,struct nfssvc_args*) ; 

int
FUNC12(struct thread *td, struct nfssvc_args *uap)
{
	int error;

	FUNC1(!FUNC2(&Giant), ("nfssvc(): called with Giant"));

	FUNC0(uap->flag);

	/* Allow anyone to get the stats. */
	if ((uap->flag & ~NFSSVC_GETSTATS) != 0) {
		error = FUNC7(td, PRIV_NFS_DAEMON);
		if (error != 0)
			return (error);
	}
	error = EINVAL;
	if ((uap->flag & (NFSSVC_ADDSOCK | NFSSVC_OLDNFSD | NFSSVC_NFSD)) &&
	    &nfsd_call_nfsserver != NULL)
		error = FUNC6)(td, uap);
	else if ((uap->flag & (NFSSVC_CBADDSOCK | NFSSVC_NFSCBD |
	    NFSSVC_DUMPMNTOPTS | NFSSVC_FORCEDISM)) && &nfsd_call_nfscl != NULL)
		error = FUNC3)(td, uap);
	else if ((uap->flag & (NFSSVC_IDNAME | NFSSVC_GETSTATS |
	    NFSSVC_GSSDADDPORT | NFSSVC_GSSDADDFIRST | NFSSVC_GSSDDELETEALL |
	    NFSSVC_NFSUSERDPORT | NFSSVC_NFSUSERDDELPORT)) &&
	    &nfsd_call_nfscommon != NULL)
		error = FUNC4)(td, uap);
	else if ((uap->flag & (NFSSVC_NFSDNFSD | NFSSVC_NFSDADDSOCK |
	    NFSSVC_PUBLICFH | NFSSVC_V4ROOTEXPORT | NFSSVC_NOPUBLICFH |
	    NFSSVC_STABLERESTART | NFSSVC_ADMINREVOKE |
	    NFSSVC_DUMPCLIENTS | NFSSVC_DUMPLOCKS | NFSSVC_BACKUPSTABLE |
	    NFSSVC_SUSPENDNFSD | NFSSVC_RESUMENFSD | NFSSVC_PNFSDS)) &&
	    &nfsd_call_nfsd != NULL)
		error = FUNC5)(td, uap);
	if (error == EINTR || error == ERESTART)
		error = 0;
	return (error);
}