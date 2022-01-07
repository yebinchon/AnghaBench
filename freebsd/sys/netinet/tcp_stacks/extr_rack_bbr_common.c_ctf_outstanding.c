
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
struct tcpcb {scalar_t__ snd_una; scalar_t__ snd_max; } ;



uint32_t
ctf_outstanding(struct tcpcb *tp)
{
 return(tp->snd_max - tp->snd_una);
}
