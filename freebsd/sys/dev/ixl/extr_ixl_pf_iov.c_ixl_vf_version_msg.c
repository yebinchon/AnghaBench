
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct virtchnl_version_info {int minor; int major; } ;
struct ixl_vf {int version; } ;
struct ixl_pf {int dummy; } ;
typedef int reply ;


 int I40E_ERR_PARAM ;
 int I40E_SUCCESS ;
 int VIRTCHNL_OP_VERSION ;
 int VIRTCHNL_VERSION_MAJOR ;
 int VIRTCHNL_VERSION_MINOR ;
 int i40e_send_vf_nack (struct ixl_pf*,struct ixl_vf*,int ,int ) ;
 int ixl_send_vf_msg (struct ixl_pf*,struct ixl_vf*,int ,int ,struct virtchnl_version_info*,int) ;

__attribute__((used)) static void
ixl_vf_version_msg(struct ixl_pf *pf, struct ixl_vf *vf, void *msg,
    uint16_t msg_size)
{
 struct virtchnl_version_info reply;

 if (msg_size != sizeof(struct virtchnl_version_info)) {
  i40e_send_vf_nack(pf, vf, VIRTCHNL_OP_VERSION,
      I40E_ERR_PARAM);
  return;
 }

 vf->version = ((struct virtchnl_version_info *)msg)->minor;

 reply.major = VIRTCHNL_VERSION_MAJOR;
 reply.minor = VIRTCHNL_VERSION_MINOR;
 ixl_send_vf_msg(pf, vf, VIRTCHNL_OP_VERSION, I40E_SUCCESS, &reply,
     sizeof(reply));
}
