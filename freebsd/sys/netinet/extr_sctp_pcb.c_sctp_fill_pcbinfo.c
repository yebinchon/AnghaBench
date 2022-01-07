
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sctp_pcbinfo {void* free_chunks; void* stream_oque; void* readq_count; void* chk_count; void* raddr_count; void* laddr_count; void* asoc_count; void* ep_count; } ;


 void* SCTP_BASE_INFO (int ) ;
 int SCTP_INP_INFO_RLOCK () ;
 int SCTP_INP_INFO_RUNLOCK () ;
 int ipi_count_asoc ;
 int ipi_count_chunk ;
 int ipi_count_ep ;
 int ipi_count_laddr ;
 int ipi_count_raddr ;
 int ipi_count_readq ;
 int ipi_count_strmoq ;
 int ipi_free_chunks ;

void
sctp_fill_pcbinfo(struct sctp_pcbinfo *spcb)
{




 SCTP_INP_INFO_RLOCK();
 spcb->ep_count = SCTP_BASE_INFO(ipi_count_ep);
 spcb->asoc_count = SCTP_BASE_INFO(ipi_count_asoc);
 spcb->laddr_count = SCTP_BASE_INFO(ipi_count_laddr);
 spcb->raddr_count = SCTP_BASE_INFO(ipi_count_raddr);
 spcb->chk_count = SCTP_BASE_INFO(ipi_count_chunk);
 spcb->readq_count = SCTP_BASE_INFO(ipi_count_readq);
 spcb->stream_oque = SCTP_BASE_INFO(ipi_count_strmoq);
 spcb->free_chunks = SCTP_BASE_INFO(ipi_free_chunks);
 SCTP_INP_INFO_RUNLOCK();
}
