
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr_storage {int dummy; } ;
struct sctp_tcb {int dummy; } ;
struct sctp_inpcb {int def_vrf_id; } ;


 int SCTP_IPI_ADDR_RLOCK () ;
 int SCTP_IPI_ADDR_RUNLOCK () ;
 size_t sctp_fill_up_addresses_vrf (struct sctp_inpcb*,struct sctp_tcb*,size_t,struct sockaddr_storage*,int ) ;

__attribute__((used)) static size_t
sctp_fill_up_addresses(struct sctp_inpcb *inp,
    struct sctp_tcb *stcb,
    size_t limit,
    struct sockaddr_storage *sas)
{
 size_t size = 0;

 SCTP_IPI_ADDR_RLOCK();

 size = sctp_fill_up_addresses_vrf(inp, stcb, limit, sas,
     inp->def_vrf_id);
 SCTP_IPI_ADDR_RUNLOCK();
 return (size);
}
