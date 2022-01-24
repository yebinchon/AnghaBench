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
struct socket {int dummy; } ;
struct mac_lomac {int dummy; } ;
struct label {int dummy; } ;

/* Variables and functions */
 struct mac_lomac* FUNC0 (struct label*) ; 
 int /*<<< orphan*/  FUNC1 (struct socket*) ; 
 int /*<<< orphan*/  FUNC2 (struct mac_lomac*,struct mac_lomac*) ; 

__attribute__((used)) static void
FUNC3(struct ucred *cred, struct socket *so,
    struct label *solabel, struct label *newlabel)
{
	struct mac_lomac *source, *dest;

	FUNC1(so);

	source = FUNC0(newlabel);
	dest = FUNC0(solabel);

	FUNC2(source, dest);
}