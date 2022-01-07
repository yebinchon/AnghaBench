
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SCTP_MAX_VRF_ID ;
 int sctp_allocate_vrf (int) ;
 int sctp_init_ifns_for_vrf (int) ;

void
sctp_init_vrf_list(int vrfid)
{
 if (vrfid > SCTP_MAX_VRF_ID)

  return;


 (void)sctp_allocate_vrf(vrfid);





 sctp_init_ifns_for_vrf(vrfid);
}
