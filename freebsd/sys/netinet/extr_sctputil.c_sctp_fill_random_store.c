
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct sctp_pcb {int random_counter; scalar_t__ random_store; scalar_t__ random_numbers; scalar_t__ store_at; } ;


 int SCTP_HMAC ;
 int sctp_hmac (int ,int *,int,int *,int,int *) ;

void
sctp_fill_random_store(struct sctp_pcb *m)
{
 m->store_at = 0;
 (void)sctp_hmac(SCTP_HMAC, (uint8_t *)m->random_numbers,
     sizeof(m->random_numbers), (uint8_t *)&m->random_counter,
     sizeof(m->random_counter), (uint8_t *)m->random_store);
 m->random_counter++;
}
