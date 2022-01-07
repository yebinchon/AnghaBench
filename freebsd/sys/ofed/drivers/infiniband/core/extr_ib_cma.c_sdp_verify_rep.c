
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sdp_hah {int majv_minv; } ;


 int EINVAL ;
 scalar_t__ SDP_MAJ_VERSION ;
 scalar_t__ sdp_get_majv (int ) ;

__attribute__((used)) static int sdp_verify_rep(const struct sdp_hah *data)
{
 if (sdp_get_majv(data->majv_minv) != SDP_MAJ_VERSION)
  return -EINVAL;
 return 0;
}
