
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
struct tcpcb {int dummy; } ;


 scalar_t__ ctf_outstanding (struct tcpcb*) ;
 int panic (char*,struct tcpcb*,scalar_t__,scalar_t__) ;

uint32_t
ctf_flight_size(struct tcpcb *tp, uint32_t rc_sacked)
{
 if (rc_sacked <= ctf_outstanding(tp))
  return(ctf_outstanding(tp) - rc_sacked);
 else {





  return (0);
 }
}
