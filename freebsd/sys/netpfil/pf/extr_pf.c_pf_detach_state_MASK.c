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
struct pf_state_key {int dummy; } ;
struct pf_state {struct pf_state_key** key; } ;
struct pf_keyhash {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct pf_keyhash*) ; 
 int /*<<< orphan*/  FUNC1 (struct pf_keyhash*) ; 
 size_t PF_SK_STACK ; 
 size_t PF_SK_WIRE ; 
 struct pf_keyhash* V_pf_keyhash ; 
 size_t FUNC2 (struct pf_state_key*) ; 
 int /*<<< orphan*/  FUNC3 (struct pf_state*,size_t) ; 

__attribute__((used)) static void
FUNC4(struct pf_state *s)
{
	struct pf_state_key *sks = s->key[PF_SK_STACK];
	struct pf_keyhash *kh;

	if (sks != NULL) {
		kh = &V_pf_keyhash[FUNC2(sks)];
		FUNC0(kh);
		if (s->key[PF_SK_STACK] != NULL)
			FUNC3(s, PF_SK_STACK);
		/*
		 * If both point to same key, then we are done.
		 */
		if (sks == s->key[PF_SK_WIRE]) {
			FUNC3(s, PF_SK_WIRE);
			FUNC1(kh);
			return;
		}
		FUNC1(kh);
	}

	if (s->key[PF_SK_WIRE] != NULL) {
		kh = &V_pf_keyhash[FUNC2(s->key[PF_SK_WIRE])];
		FUNC0(kh);
		if (s->key[PF_SK_WIRE] != NULL)
			FUNC3(s, PF_SK_WIRE);
		FUNC1(kh);
	}
}