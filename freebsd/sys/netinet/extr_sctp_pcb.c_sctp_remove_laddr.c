
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sctp_laddr {int ifa; } ;


 int LIST_REMOVE (struct sctp_laddr*,int ) ;
 int SCTP_BASE_INFO (int ) ;
 int SCTP_DECR_LADDR_COUNT () ;
 int SCTP_ZONE_FREE (int ,struct sctp_laddr*) ;
 int ipi_zone_laddr ;
 int sctp_free_ifa (int ) ;
 int sctp_nxt_addr ;

__attribute__((used)) static void
sctp_remove_laddr(struct sctp_laddr *laddr)
{


 LIST_REMOVE(laddr, sctp_nxt_addr);
 sctp_free_ifa(laddr->ifa);
 SCTP_ZONE_FREE(SCTP_BASE_INFO(ipi_zone_laddr), laddr);
 SCTP_DECR_LADDR_COUNT();
}
