
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct vfpf_update_tunn_param_tlv {int tun_mode_update_mask; int tunn_mode; } ;
struct ecore_tunn_update_type {int b_update_mode; int b_mode_enabled; int tun_cls; } ;
typedef enum ecore_tunn_mode { ____Placeholder_ecore_tunn_mode } ecore_tunn_mode ;



__attribute__((used)) static void
__ecore_iov_pf_update_tun_param(struct vfpf_update_tunn_param_tlv *p_req,
    struct ecore_tunn_update_type *p_tun,
    enum ecore_tunn_mode mask, u8 tun_cls)
{
 if (p_req->tun_mode_update_mask & (1 << mask)) {
  p_tun->b_update_mode = 1;

  if (p_req->tunn_mode & (1 << mask))
   p_tun->b_mode_enabled = 1;
 }

 p_tun->tun_cls = tun_cls;
}
