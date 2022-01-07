
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int s_addr; } ;
struct TYPE_7__ {int sin_len; TYPE_2__ sin_addr; int sin_port; int sin_family; } ;
struct TYPE_5__ {int sin6_len; int sin6_addr; int sin6_port; int sin6_family; } ;
union sctp_sockstore {int sa; TYPE_3__ sin; TYPE_1__ sin6; } ;
typedef int uint8_t ;
typedef int uint16_t ;
struct sockaddr_in6 {int dummy; } ;
struct sockaddr_in {int dummy; } ;
struct TYPE_8__ {int primary_destination; scalar_t__ asconf_supported; int vrf_id; } ;
struct sctp_tcb {TYPE_4__ asoc; int sctp_ep; int rport; } ;
struct sctp_paramhdr {int param_length; int param_type; } ;
struct sctp_ipv6addr_param {int addr; } ;
struct sctp_ipv4addr_param {int addr; } ;
struct sctp_ifa {int dummy; } ;
struct mbuf {int dummy; } ;
struct in6_addr {int dummy; } ;


 int AF_INET ;
 int AF_INET6 ;
 int SCTPDBG (int ,char*) ;
 int SCTP_ADDR_NOT_LOCKED ;
 int SCTP_DEBUG_ASCONF2 ;
 scalar_t__ SCTP_GET_STATE (struct sctp_tcb*) ;


 int SCTP_PCB_FLAGS_DO_ASCONF ;
 int SCTP_PRINTF (char*,int,int) ;
 scalar_t__ SCTP_SIZE32 (int) ;
 scalar_t__ SCTP_STATE_OPEN ;
 int SCTP_TIMER_TYPE_ASCONF ;
 int memcpy (int *,int ,int) ;
 int memset (union sctp_sockstore*,int ,int) ;
 int ntohs (int ) ;
 int sctp_asconf_queue_sa_delete (struct sctp_tcb*,int *) ;
 struct sctp_ifa* sctp_find_ifa_by_addr (int *,int ,int ) ;
 scalar_t__ sctp_is_feature_on (int ,int ) ;
 scalar_t__ sctp_m_getptr (struct mbuf*,unsigned int,int,int *) ;
 int sctp_send_asconf (struct sctp_tcb*,int *,int ) ;
 int sctp_timer_start (int ,int ,struct sctp_tcb*,int ) ;

__attribute__((used)) static void
sctp_process_initack_addresses(struct sctp_tcb *stcb, struct mbuf *m,
    unsigned int offset, unsigned int length)
{
 struct sctp_paramhdr tmp_param, *ph;
 uint16_t plen, ptype;
 struct sctp_ifa *sctp_ifa;
 union sctp_sockstore store;







 SCTPDBG(SCTP_DEBUG_ASCONF2, "processing init-ack addresses\n");
 if (stcb == ((void*)0))
  return;


 length += offset;

 if ((offset + sizeof(struct sctp_paramhdr)) > length) {
  return;
 }

 ph = (struct sctp_paramhdr *)
     sctp_m_getptr(m, offset, sizeof(struct sctp_paramhdr),
     (uint8_t *)&tmp_param);
 while (ph != ((void*)0)) {
  ptype = ntohs(ph->param_type);
  plen = ntohs(ph->param_length);
  switch (ptype) {
  default:
   goto next_addr;
  }


  sctp_ifa = sctp_find_ifa_by_addr(&store.sa, stcb->asoc.vrf_id,
      SCTP_ADDR_NOT_LOCKED);
  if (sctp_ifa == ((void*)0)) {

   int status;


   if ((sctp_is_feature_on(stcb->sctp_ep,
       SCTP_PCB_FLAGS_DO_ASCONF)) &&
       stcb->asoc.asconf_supported) {

    status = sctp_asconf_queue_sa_delete(stcb, &store.sa);




    if (status == 0 &&
        SCTP_GET_STATE(stcb) == SCTP_STATE_OPEN) {





     sctp_send_asconf(stcb, ((void*)0), SCTP_ADDR_NOT_LOCKED);

    }
   }
  }

next_addr:




  if (SCTP_SIZE32(plen) == 0) {
   SCTP_PRINTF("process_initack_addrs: bad len (%d) type=%xh\n",
       plen, ptype);
   return;
  }

  offset += SCTP_SIZE32(plen);
  if ((offset + sizeof(struct sctp_paramhdr)) > length)
   return;
  ph = (struct sctp_paramhdr *)sctp_m_getptr(m, offset,
      sizeof(struct sctp_paramhdr), (uint8_t *)&tmp_param);
 }
}
