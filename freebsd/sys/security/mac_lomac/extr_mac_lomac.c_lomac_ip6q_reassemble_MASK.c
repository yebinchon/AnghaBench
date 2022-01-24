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
struct mac_lomac {int dummy; } ;
struct label {int dummy; } ;
struct ip6q {int dummy; } ;

/* Variables and functions */
 struct mac_lomac* FUNC0 (struct label*) ; 
 int /*<<< orphan*/  FUNC1 (struct mac_lomac*,struct mac_lomac*) ; 

__attribute__((used)) static void
FUNC2(struct ip6q *q6, struct label *q6label, struct mbuf *m,
    struct label *mlabel)
{
	struct mac_lomac *source, *dest;

	source = FUNC0(q6label);
	dest = FUNC0(mlabel);

	/* Just use the head, since we require them all to match. */
	FUNC1(source, dest);
}