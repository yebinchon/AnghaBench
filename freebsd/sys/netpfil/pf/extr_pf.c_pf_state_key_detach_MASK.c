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
struct pf_state_key {int /*<<< orphan*/ * states; } ;
struct pf_state {struct pf_state_key** key; } ;
struct pf_keyhash {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct pf_state_key*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct pf_keyhash*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct pf_state*,int /*<<< orphan*/ ) ; 
 struct pf_keyhash* V_pf_keyhash ; 
 int /*<<< orphan*/  V_pf_state_key_z ; 
 int /*<<< orphan*/  entry ; 
 int /*<<< orphan*/ * key_list ; 
 size_t FUNC4 (struct pf_state_key*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,struct pf_state_key*) ; 

__attribute__((used)) static void
FUNC6(struct pf_state *s, int idx)
{
	struct pf_state_key *sk = s->key[idx];
#ifdef INVARIANTS
	struct pf_keyhash *kh = &V_pf_keyhash[pf_hashkey(sk)];

	PF_HASHROW_ASSERT(kh);
#endif
	FUNC3(&sk->states[idx], s, key_list[idx]);
	s->key[idx] = NULL;

	if (FUNC2(&sk->states[0]) && FUNC2(&sk->states[1])) {
		FUNC0(sk, entry);
		FUNC5(V_pf_state_key_z, sk);
	}
}