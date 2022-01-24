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
struct shmid_kernel {int dummy; } ;
struct mac_mls {int dummy; } ;
struct label {int dummy; } ;

/* Variables and functions */
 int EACCES ; 
#define  IPC_RMID 131 
#define  IPC_SET 130 
#define  IPC_STAT 129 
#define  SHM_STAT 128 
 struct mac_mls* FUNC0 (struct label*) ; 
 int /*<<< orphan*/  FUNC1 (struct mac_mls*,struct mac_mls*) ; 
 int /*<<< orphan*/  mls_enabled ; 

__attribute__((used)) static int
FUNC2(struct ucred *cred, struct shmid_kernel *shmsegptr,
    struct label *shmseglabel, int cmd)
{
	struct mac_mls *subj, *obj;

	if (!mls_enabled)
		return (0);

	subj = FUNC0(cred->cr_label);
	obj = FUNC0(shmseglabel);

	switch(cmd) {
	case IPC_RMID:
	case IPC_SET:
		if (!FUNC1(obj, subj))
			return (EACCES);
		break;

	case IPC_STAT:
	case SHM_STAT:
		if (!FUNC1(subj, obj))
			return (EACCES);
		break;

	default:
		return (EACCES);
	}

	return (0);
}