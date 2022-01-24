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
struct pipepair {int dummy; } ;
struct mac_lomac {int dummy; } ;
struct label {int dummy; } ;

/* Variables and functions */
 struct mac_lomac* FUNC0 (struct label*) ; 
 int /*<<< orphan*/  FUNC1 (struct mac_lomac*,struct mac_lomac*) ; 
 int /*<<< orphan*/  lomac_enabled ; 
 int FUNC2 (struct mac_lomac*,struct mac_lomac*,char*,char*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC3(struct ucred *cred, struct pipepair *pp,
    struct label *pplabel)
{
	struct mac_lomac *subj, *obj;

	if (!lomac_enabled)
		return (0);

	subj = FUNC0(cred->cr_label);
	obj = FUNC0(pplabel);

	if (!FUNC1(obj, subj))
		return (FUNC2(subj, obj, "reading", "pipe", NULL));

	return (0);
}