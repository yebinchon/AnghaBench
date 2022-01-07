
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sctp_inpcb {int def_vrf_id; } ;


 int SCTP_IPI_ADDR_RLOCK () ;
 int SCTP_IPI_ADDR_RUNLOCK () ;
 int sctp_count_max_addresses_vrf (struct sctp_inpcb*,int ) ;

__attribute__((used)) static int
sctp_count_max_addresses(struct sctp_inpcb *inp)
{
 int cnt = 0;

 SCTP_IPI_ADDR_RLOCK();

 cnt = sctp_count_max_addresses_vrf(inp, inp->def_vrf_id);
 SCTP_IPI_ADDR_RUNLOCK();
 return (cnt);
}
