
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fsm_decode {scalar_t__ rejend; scalar_t__ rej; scalar_t__ nakend; scalar_t__ nak; int ack; int ackend; } ;



void
fsm_opt_normalise(struct fsm_decode *dec)
{
  if (dec->rejend != dec->rej) {

    dec->ackend = dec->ack;
    dec->nakend = dec->nak;
  } else if (dec->nakend != dec->nak)

    dec->ackend = dec->ack;
}
