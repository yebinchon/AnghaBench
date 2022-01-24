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
struct mac_biba {int dummy; } ;
struct label {int dummy; } ;

/* Variables and functions */
 int EACCES ; 
 struct mac_biba* FUNC0 (struct label*) ; 
 int /*<<< orphan*/  FUNC1 (struct mac_biba*,struct mac_biba*) ; 
 int /*<<< orphan*/  biba_enabled ; 

__attribute__((used)) static int
FUNC2(struct ucred *cred, struct shmfd *shmfd,
    struct label *shmlabel)
{
	struct mac_biba *subj, *obj;

	if (!biba_enabled)
		return (0);

	subj = FUNC0(cred->cr_label);
	obj = FUNC0(shmlabel);

	if (!FUNC1(subj, obj))
		return (EACCES);
    
	return (0);
}