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
struct mbuf {int dummy; } ;
struct mac_biba {int dummy; } ;
struct label {int dummy; } ;
struct ip6q {int dummy; } ;

/* Variables and functions */
 struct mac_biba* FUNC0 (struct label*) ; 
 int FUNC1 (struct mac_biba*,struct mac_biba*) ; 

__attribute__((used)) static int
FUNC2(struct mbuf *m, struct label *mlabel, struct ip6q *q6,
    struct label *q6label)
{
	struct mac_biba *a, *b;

	a = FUNC0(q6label);
	b = FUNC0(mlabel);

	return (FUNC1(a, b));
}