
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u64 ;


 int IF_Gbps (int) ;
 int IF_Mbps (int) ;
 int VIRTCHNL_LINK_SPEED_100MB ;
 int VIRTCHNL_LINK_SPEED_10GB ;
 int VIRTCHNL_LINK_SPEED_1GB ;
 int VIRTCHNL_LINK_SPEED_20GB ;
 int VIRTCHNL_LINK_SPEED_25GB ;
 int VIRTCHNL_LINK_SPEED_40GB ;

u64
ixl_max_vc_speed_to_value(u8 link_speeds)
{
 if (link_speeds & VIRTCHNL_LINK_SPEED_40GB)
  return IF_Gbps(40);
 if (link_speeds & VIRTCHNL_LINK_SPEED_25GB)
  return IF_Gbps(25);
 if (link_speeds & VIRTCHNL_LINK_SPEED_20GB)
  return IF_Gbps(20);
 if (link_speeds & VIRTCHNL_LINK_SPEED_10GB)
  return IF_Gbps(10);
 if (link_speeds & VIRTCHNL_LINK_SPEED_1GB)
  return IF_Gbps(1);
 if (link_speeds & VIRTCHNL_LINK_SPEED_100MB)
  return IF_Mbps(100);
 else

  return IF_Mbps(100);
}
