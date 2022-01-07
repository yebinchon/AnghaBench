
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pf_state_key {int * states; } ;
struct pf_state {struct pf_state_key** key; } ;
struct pf_keyhash {int dummy; } ;


 int LIST_REMOVE (struct pf_state_key*,int ) ;
 int PF_HASHROW_ASSERT (struct pf_keyhash*) ;
 scalar_t__ TAILQ_EMPTY (int *) ;
 int TAILQ_REMOVE (int *,struct pf_state*,int ) ;
 struct pf_keyhash* V_pf_keyhash ;
 int V_pf_state_key_z ;
 int entry ;
 int * key_list ;
 size_t pf_hashkey (struct pf_state_key*) ;
 int uma_zfree (int ,struct pf_state_key*) ;

__attribute__((used)) static void
pf_state_key_detach(struct pf_state *s, int idx)
{
 struct pf_state_key *sk = s->key[idx];





 TAILQ_REMOVE(&sk->states[idx], s, key_list[idx]);
 s->key[idx] = ((void*)0);

 if (TAILQ_EMPTY(&sk->states[0]) && TAILQ_EMPTY(&sk->states[1])) {
  LIST_REMOVE(sk, entry);
  uma_zfree(V_pf_state_key_z, sk);
 }
}
