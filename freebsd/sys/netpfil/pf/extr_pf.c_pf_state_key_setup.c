
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* u_int16_t ;
struct pf_state_key {int af; int proto; void** port; int * addr; } ;
struct pf_pdesc {size_t sidx; size_t didx; int af; int proto; } ;
struct pf_addr {int dummy; } ;


 int M_NOWAIT ;
 int PF_ACPY (int *,struct pf_addr*,int ) ;
 int V_pf_state_key_z ;
 struct pf_state_key* uma_zalloc (int ,int ) ;

struct pf_state_key *
pf_state_key_setup(struct pf_pdesc *pd, struct pf_addr *saddr,
 struct pf_addr *daddr, u_int16_t sport, u_int16_t dport)
{
 struct pf_state_key *sk;

 sk = uma_zalloc(V_pf_state_key_z, M_NOWAIT);
 if (sk == ((void*)0))
  return (((void*)0));

 PF_ACPY(&sk->addr[pd->sidx], saddr, pd->af);
 PF_ACPY(&sk->addr[pd->didx], daddr, pd->af);
 sk->port[pd->sidx] = sport;
 sk->port[pd->didx] = dport;
 sk->proto = pd->proto;
 sk->af = pd->af;

 return (sk);
}
