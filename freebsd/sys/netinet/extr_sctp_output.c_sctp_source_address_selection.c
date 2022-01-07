
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
struct sockaddr_in6 {int sin6_addr; } ;
struct sockaddr_in {int sin_addr; } ;
struct sockaddr {int dummy; } ;
struct sctp_tcb {int dummy; } ;
struct sctp_nets {int addr_is_local; } ;
struct sctp_inpcb {int sctp_flags; int fibnum; } ;
struct sctp_ifa {int dummy; } ;
struct TYPE_9__ {int sa_family; } ;
struct TYPE_10__ {TYPE_1__ ro_dst; int * ro_rt; } ;
typedef TYPE_2__ sctp_route_t ;
typedef int sa_family_t ;




 int IN4_ISLOOPBACK_ADDRESS (int *) ;
 int IN4_ISPRIVATE_ADDRESS (int *) ;
 int IN6_IS_ADDR_LINKLOCAL (int *) ;
 int IN6_IS_ADDR_LOOPBACK (int *) ;
 int SCTPDBG (int ,char*) ;
 int SCTPDBG_ADDR (int ,struct sockaddr*) ;
 int SCTP_DEBUG_OUTPUT2 ;
 int SCTP_IPI_ADDR_RLOCK () ;
 int SCTP_IPI_ADDR_RUNLOCK () ;
 int SCTP_PCB_FLAGS_BOUNDALL ;
 int SCTP_ROUTE_IS_REAL_LOOP (TYPE_2__*) ;
 int SCTP_RTALLOC (TYPE_2__*,int ,int ) ;
 struct sctp_ifa* sctp_choose_boundall (struct sctp_inpcb*,struct sctp_tcb*,struct sctp_nets*,TYPE_2__*,int ,int,int,int,int) ;
 struct sctp_ifa* sctp_choose_boundspecific_inp (struct sctp_inpcb*,TYPE_2__*,int ,int,int,int,int) ;
 struct sctp_ifa* sctp_choose_boundspecific_stcb (struct sctp_inpcb*,struct sctp_tcb*,TYPE_2__*,int ,int,int,int,int) ;

struct sctp_ifa *
sctp_source_address_selection(struct sctp_inpcb *inp,
    struct sctp_tcb *stcb,
    sctp_route_t *ro,
    struct sctp_nets *net,
    int non_asoc_addr_ok, uint32_t vrf_id)
{
 struct sctp_ifa *answer;
 uint8_t dest_is_priv, dest_is_loop;
 sa_family_t fam;
 if (ro->ro_rt == ((void*)0)) {



  SCTP_RTALLOC(ro, vrf_id, inp->fibnum);
 }
 if (ro->ro_rt == ((void*)0)) {
  return (((void*)0));
 }
 fam = ro->ro_dst.sa_family;
 dest_is_priv = dest_is_loop = 0;

 switch (fam) {
 }
 SCTPDBG(SCTP_DEBUG_OUTPUT2, "Select source addr for:");
 SCTPDBG_ADDR(SCTP_DEBUG_OUTPUT2, (struct sockaddr *)&ro->ro_dst);
 SCTP_IPI_ADDR_RLOCK();
 if (inp->sctp_flags & SCTP_PCB_FLAGS_BOUNDALL) {



  answer = sctp_choose_boundall(inp, stcb, net, ro, vrf_id,
      dest_is_priv, dest_is_loop,
      non_asoc_addr_ok, fam);
  SCTP_IPI_ADDR_RUNLOCK();
  return (answer);
 }



 if (stcb) {
  answer = sctp_choose_boundspecific_stcb(inp, stcb, ro,
      vrf_id, dest_is_priv,
      dest_is_loop,
      non_asoc_addr_ok, fam);
 } else {
  answer = sctp_choose_boundspecific_inp(inp, ro, vrf_id,
      non_asoc_addr_ok,
      dest_is_priv,
      dest_is_loop, fam);
 }
 SCTP_IPI_ADDR_RUNLOCK();
 return (answer);
}
