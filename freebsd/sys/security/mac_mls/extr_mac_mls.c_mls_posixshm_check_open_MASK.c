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
struct ucred {struct label* cr_label; } ;
struct shmfd {int dummy; } ;
struct mac_mls {int dummy; } ;
struct label {int dummy; } ;
typedef  int accmode_t ;

/* Variables and functions */
 int EACCES ; 
 struct mac_mls* FUNC0 (struct label*) ; 
 int VEXEC ; 
 int VMODIFY_PERMS ; 
 int VREAD ; 
 int VSTAT_PERMS ; 
 int /*<<< orphan*/  FUNC1 (struct mac_mls*,struct mac_mls*) ; 
 int /*<<< orphan*/  mls_enabled ; 

__attribute__((used)) static int
FUNC2(struct ucred *cred, struct shmfd *shmfd,
    struct label *shmlabel, accmode_t accmode)
{
	struct mac_mls *subj, *obj;

	if (!mls_enabled)
		return (0);

	subj = FUNC0(cred->cr_label);
	obj = FUNC0(shmlabel);

	if (accmode & (VREAD | VEXEC | VSTAT_PERMS)) {
		if (!FUNC1(subj, obj))
			return (EACCES);
	}
	if (accmode & VMODIFY_PERMS) {
		if (!FUNC1(obj, subj))
			return (EACCES);
	}

	return (0);
}