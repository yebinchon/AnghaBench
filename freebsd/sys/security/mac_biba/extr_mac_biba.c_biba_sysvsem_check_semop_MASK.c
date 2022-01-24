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
struct mac_biba {int dummy; } ;
struct label {int dummy; } ;

/* Variables and functions */
 int EACCES ; 
 size_t SEM_A ; 
 size_t SEM_R ; 
 struct mac_biba* FUNC0 (struct label*) ; 
 int /*<<< orphan*/  FUNC1 (struct mac_biba*,struct mac_biba*) ; 
 int /*<<< orphan*/  biba_enabled ; 

__attribute__((used)) static int
FUNC2(struct ucred *cred, struct semid_kernel *semakptr,
    struct label *semaklabel, size_t accesstype)
{
	struct mac_biba *subj, *obj;

	if (!biba_enabled)
		return (0);

	subj = FUNC0(cred->cr_label);
	obj = FUNC0(semaklabel);

	if (accesstype & SEM_R)
		if (!FUNC1(obj, subj))
			return (EACCES);

	if (accesstype & SEM_A)
		if (!FUNC1(subj, obj))
			return (EACCES);

	return (0);
}