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
struct socket {int dummy; } ;
struct mac_biba {int dummy; } ;
struct label {int dummy; } ;

/* Variables and functions */
 int ENOENT ; 
 struct mac_biba* FUNC0 (struct label*) ; 
 int /*<<< orphan*/  FUNC1 (struct socket*) ; 
 int /*<<< orphan*/  FUNC2 (struct socket*) ; 
 int /*<<< orphan*/  FUNC3 (struct mac_biba*,struct mac_biba*) ; 
 int /*<<< orphan*/  biba_enabled ; 

__attribute__((used)) static int
FUNC4(struct ucred *cred, struct socket *so,
    struct label *solabel)
{
	struct mac_biba *subj, *obj;

	if (!biba_enabled)
		return (0);

	subj = FUNC0(cred->cr_label);
	obj = FUNC0(solabel);

	FUNC1(so);
	if (!FUNC3(obj, subj)) {
		FUNC2(so);
		return (ENOENT);
	}
	FUNC2(so);

	return (0);
}