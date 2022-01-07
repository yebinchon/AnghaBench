
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pf_state_key_cmp {int dummy; } ;
struct pf_state_key {int * states; } ;


 size_t PF_SK_STACK ;
 size_t PF_SK_WIRE ;
 int TAILQ_INIT (int *) ;
 int bzero (struct pf_state_key*,int) ;

__attribute__((used)) static int
pf_state_key_ctor(void *mem, int size, void *arg, int flags)
{
 struct pf_state_key *sk = mem;

 bzero(sk, sizeof(struct pf_state_key_cmp));
 TAILQ_INIT(&sk->states[PF_SK_WIRE]);
 TAILQ_INIT(&sk->states[PF_SK_STACK]);

 return (0);
}
