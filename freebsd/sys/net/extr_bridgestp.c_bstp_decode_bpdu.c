
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint64_t ;
struct bstp_port {int bp_port_id; } ;
struct TYPE_2__ {int pv_root_id; int pv_dbridge_id; int pv_port_id; void* pv_dport_id; int pv_cost; } ;
struct bstp_config_unit {int cu_topology_change_ack; int cu_proposal; int cu_agree; int cu_learning; int cu_forwarding; int cu_topology_change; void* cu_role; int cu_message_type; TYPE_1__ cu_pv; void* cu_forward_delay; void* cu_hello_time; void* cu_max_age; void* cu_message_age; } ;
struct bstp_cbpdu {int cbu_flags; int cbu_protover; int cbu_bpdutype; int cbu_portid; int cbu_forwarddelay; int cbu_hellotime; int cbu_maxage; int cbu_messageage; int cbu_rootpathcost; scalar_t__* cbu_bridgeaddr; int cbu_bridgepri; scalar_t__* cbu_rootaddr; int cbu_rootpri; } ;


 int BSTP_PDU_F_A ;


 int BSTP_PDU_F_F ;
 int BSTP_PDU_F_L ;
 int BSTP_PDU_F_P ;

 int BSTP_PDU_F_TC ;
 int BSTP_PDU_F_TCA ;
 int BSTP_PDU_PRMASK ;
 int BSTP_PDU_PRSHIFT ;
 int BSTP_PDU_RSTPMASK ;
 int BSTP_PDU_STPMASK ;


 void* BSTP_ROLE_ALTERNATE ;
 void* BSTP_ROLE_DESIGNATED ;
 void* BSTP_ROLE_ROOT ;
 int ntohl (int ) ;
 void* ntohs (int ) ;

__attribute__((used)) static void
bstp_decode_bpdu(struct bstp_port *bp, struct bstp_cbpdu *cpdu,
    struct bstp_config_unit *cu)
{
 int flags;

 cu->cu_pv.pv_root_id =
     (((uint64_t)ntohs(cpdu->cbu_rootpri)) << 48) |
     (((uint64_t)cpdu->cbu_rootaddr[0]) << 40) |
     (((uint64_t)cpdu->cbu_rootaddr[1]) << 32) |
     (((uint64_t)cpdu->cbu_rootaddr[2]) << 24) |
     (((uint64_t)cpdu->cbu_rootaddr[3]) << 16) |
     (((uint64_t)cpdu->cbu_rootaddr[4]) << 8) |
     (((uint64_t)cpdu->cbu_rootaddr[5]) << 0);

 cu->cu_pv.pv_dbridge_id =
     (((uint64_t)ntohs(cpdu->cbu_bridgepri)) << 48) |
     (((uint64_t)cpdu->cbu_bridgeaddr[0]) << 40) |
     (((uint64_t)cpdu->cbu_bridgeaddr[1]) << 32) |
     (((uint64_t)cpdu->cbu_bridgeaddr[2]) << 24) |
     (((uint64_t)cpdu->cbu_bridgeaddr[3]) << 16) |
     (((uint64_t)cpdu->cbu_bridgeaddr[4]) << 8) |
     (((uint64_t)cpdu->cbu_bridgeaddr[5]) << 0);

 cu->cu_pv.pv_cost = ntohl(cpdu->cbu_rootpathcost);
 cu->cu_message_age = ntohs(cpdu->cbu_messageage);
 cu->cu_max_age = ntohs(cpdu->cbu_maxage);
 cu->cu_hello_time = ntohs(cpdu->cbu_hellotime);
 cu->cu_forward_delay = ntohs(cpdu->cbu_forwarddelay);
 cu->cu_pv.pv_dport_id = ntohs(cpdu->cbu_portid);
 cu->cu_pv.pv_port_id = bp->bp_port_id;
 cu->cu_message_type = cpdu->cbu_bpdutype;


 flags = cpdu->cbu_flags;
 switch (cpdu->cbu_protover) {
  case 128:
   flags &= BSTP_PDU_STPMASK;

   cu->cu_role = BSTP_ROLE_DESIGNATED;
   break;

  case 129:
   flags &= BSTP_PDU_RSTPMASK;
   break;
 }

 cu->cu_topology_change_ack =
  (flags & BSTP_PDU_F_TCA) ? 1 : 0;
 cu->cu_proposal =
  (flags & BSTP_PDU_F_P) ? 1 : 0;
 cu->cu_agree =
  (flags & BSTP_PDU_F_A) ? 1 : 0;
 cu->cu_learning =
  (flags & BSTP_PDU_F_L) ? 1 : 0;
 cu->cu_forwarding =
  (flags & BSTP_PDU_F_F) ? 1 : 0;
 cu->cu_topology_change =
  (flags & BSTP_PDU_F_TC) ? 1 : 0;

 switch ((flags & BSTP_PDU_PRMASK) >> BSTP_PDU_PRSHIFT) {
  case 130:
   cu->cu_role = BSTP_ROLE_ROOT;
   break;
  case 132:
   cu->cu_role = BSTP_ROLE_ALTERNATE;
   break;
  case 131:
   cu->cu_role = BSTP_ROLE_DESIGNATED;
   break;
 }
}
