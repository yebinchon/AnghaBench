
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pf_state_key_cmp {int dummy; } ;
struct pf_state_key {int dummy; } ;


 int M_NOWAIT ;
 int V_pf_state_key_z ;
 int bcopy (struct pf_state_key*,struct pf_state_key*,int) ;
 struct pf_state_key* uma_zalloc (int ,int ) ;

struct pf_state_key *
pf_state_key_clone(struct pf_state_key *orig)
{
 struct pf_state_key *sk;

 sk = uma_zalloc(V_pf_state_key_z, M_NOWAIT);
 if (sk == ((void*)0))
  return (((void*)0));

 bcopy(orig, sk, sizeof(struct pf_state_key_cmp));

 return (sk);
}
