
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pf_state_key {int dummy; } ;
struct pf_state {struct pf_state_key** key; } ;
struct pf_keyhash {int dummy; } ;


 int PF_HASHROW_LOCK (struct pf_keyhash*) ;
 int PF_HASHROW_UNLOCK (struct pf_keyhash*) ;
 size_t PF_SK_STACK ;
 size_t PF_SK_WIRE ;
 struct pf_keyhash* V_pf_keyhash ;
 size_t pf_hashkey (struct pf_state_key*) ;
 int pf_state_key_detach (struct pf_state*,size_t) ;

__attribute__((used)) static void
pf_detach_state(struct pf_state *s)
{
 struct pf_state_key *sks = s->key[PF_SK_STACK];
 struct pf_keyhash *kh;

 if (sks != ((void*)0)) {
  kh = &V_pf_keyhash[pf_hashkey(sks)];
  PF_HASHROW_LOCK(kh);
  if (s->key[PF_SK_STACK] != ((void*)0))
   pf_state_key_detach(s, PF_SK_STACK);



  if (sks == s->key[PF_SK_WIRE]) {
   pf_state_key_detach(s, PF_SK_WIRE);
   PF_HASHROW_UNLOCK(kh);
   return;
  }
  PF_HASHROW_UNLOCK(kh);
 }

 if (s->key[PF_SK_WIRE] != ((void*)0)) {
  kh = &V_pf_keyhash[pf_hashkey(s->key[PF_SK_WIRE])];
  PF_HASHROW_LOCK(kh);
  if (s->key[PF_SK_WIRE] != ((void*)0))
   pf_state_key_detach(s, PF_SK_WIRE);
  PF_HASHROW_UNLOCK(kh);
 }
}
