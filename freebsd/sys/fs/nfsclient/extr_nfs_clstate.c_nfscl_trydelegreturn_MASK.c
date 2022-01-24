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
struct ucred {int dummy; } ;
struct nfsmount {int dummy; } ;
struct nfscldeleg {int dummy; } ;
typedef  int /*<<< orphan*/  NFSPROC_T ;

/* Variables and functions */
 int EACCES ; 
 int EAUTH ; 
 int NFSERR_DELAY ; 
 int /*<<< orphan*/  PZERO ; 
 int /*<<< orphan*/  FUNC0 (struct ucred*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,char*) ; 
 int FUNC2 (struct nfscldeleg*,struct ucred*,struct nfsmount*,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int
FUNC3(struct nfscldeleg *dp, struct ucred *cred,
    struct nfsmount *nmp, NFSPROC_T *p)
{
	int error;

	do {
		error = FUNC2(dp, cred, nmp, p, 0);
		if (error == NFSERR_DELAY)
			(void) FUNC1(PZERO, error, "nfstrydp");
	} while (error == NFSERR_DELAY);
	if (error == EAUTH || error == EACCES) {
		/* Try again using system credentials */
		FUNC0(cred);
		do {
			error = FUNC2(dp, cred, nmp, p, 1);
			if (error == NFSERR_DELAY)
				(void) FUNC1(PZERO, error, "nfstrydp");
		} while (error == NFSERR_DELAY);
	}
	return (error);
}