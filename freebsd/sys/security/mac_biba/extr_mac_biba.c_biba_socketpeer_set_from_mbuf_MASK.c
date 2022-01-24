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
struct socket {int dummy; } ;
struct mbuf {int dummy; } ;
struct mac_biba {int dummy; } ;
struct label {int dummy; } ;

/* Variables and functions */
 struct mac_biba* FUNC0 (struct label*) ; 
 int /*<<< orphan*/  FUNC1 (struct socket*) ; 
 int /*<<< orphan*/  FUNC2 (struct socket*) ; 
 int /*<<< orphan*/  FUNC3 (struct mac_biba*,struct mac_biba*) ; 

__attribute__((used)) static void
FUNC4(struct mbuf *m, struct label *mlabel,
    struct socket *so, struct label *sopeerlabel)
{
	struct mac_biba *source, *dest;

	source = FUNC0(mlabel);
	dest = FUNC0(sopeerlabel);

	FUNC1(so);
	FUNC3(source, dest);
	FUNC2(so);
}