
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef scalar_t__ uint32_t ;
struct sctp_pcb {scalar_t__ initial_sequence_debug; int store_at; int * random_store; } ;


 int SCTP_SIGNATURE_SIZE ;
 int atomic_cmpset_int (int*,int,int) ;
 int sctp_fill_random_store (struct sctp_pcb*) ;

uint32_t
sctp_select_initial_TSN(struct sctp_pcb *inp)
{





 uint32_t x, *xp;
 uint8_t *p;
 int store_at, new_store;

 if (inp->initial_sequence_debug != 0) {
  uint32_t ret;

  ret = inp->initial_sequence_debug;
  inp->initial_sequence_debug++;
  return (ret);
 }
retry:
 store_at = inp->store_at;
 new_store = store_at + sizeof(uint32_t);
 if (new_store >= (SCTP_SIGNATURE_SIZE - 3)) {
  new_store = 0;
 }
 if (!atomic_cmpset_int(&inp->store_at, store_at, new_store)) {
  goto retry;
 }
 if (new_store == 0) {

  sctp_fill_random_store(inp);
 }
 p = &inp->random_store[store_at];
 xp = (uint32_t *)p;
 x = *xp;
 return (x);
}
