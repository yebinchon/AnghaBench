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
struct semid_kernel {int dummy; } ;
struct mac_mls {int dummy; } ;
struct label {int dummy; } ;

/* Variables and functions */
 int EACCES ; 
#define  GETALL 137 
#define  GETNCNT 136 
#define  GETPID 135 
#define  GETVAL 134 
#define  GETZCNT 133 
#define  IPC_RMID 132 
#define  IPC_SET 131 
#define  IPC_STAT 130 
#define  SETALL 129 
#define  SETVAL 128 
 struct mac_mls* FUNC0 (struct label*) ; 
 int /*<<< orphan*/  FUNC1 (struct mac_mls*,struct mac_mls*) ; 
 int /*<<< orphan*/  mls_enabled ; 

__attribute__((used)) static int
FUNC2(struct ucred *cred, struct semid_kernel *semakptr,
    struct label *semaklabel, int cmd)
{
	struct mac_mls *subj, *obj;

	if (!mls_enabled)
		return (0);

	subj = FUNC0(cred->cr_label);
	obj = FUNC0(semaklabel);

	switch(cmd) {
	case IPC_RMID:
	case IPC_SET:
	case SETVAL:
	case SETALL:
		if (!FUNC1(obj, subj))
			return (EACCES);
		break;

	case IPC_STAT:
	case GETVAL:
	case GETPID:
	case GETNCNT:
	case GETZCNT:
	case GETALL:
		if (!FUNC1(subj, obj))
			return (EACCES);
		break;

	default:
		return (EACCES);
	}

	return (0);
}