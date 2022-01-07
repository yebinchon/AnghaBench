
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct ecore_iov_vf_mbx {int * offset; scalar_t__ reply_virt; } ;
struct ecore_vf_info {struct ecore_iov_vf_mbx vf_mbx; } ;
struct ecore_ptt {int dummy; } ;
struct ecore_hwfn {int dummy; } ;
struct channel_list_end_tlv {int dummy; } ;


 int CHANNEL_TLV_LIST_END ;
 int ecore_add_tlv (int **,int,int) ;
 int ecore_iov_send_response (struct ecore_hwfn*,struct ecore_ptt*,struct ecore_vf_info*,int,int ) ;

__attribute__((used)) static void ecore_iov_prepare_resp(struct ecore_hwfn *p_hwfn,
       struct ecore_ptt *p_ptt,
       struct ecore_vf_info *vf_info,
       u16 type, u16 length, u8 status)
{
 struct ecore_iov_vf_mbx *mbx = &vf_info->vf_mbx;

 mbx->offset = (u8 *)mbx->reply_virt;

 ecore_add_tlv(&mbx->offset, type, length);
 ecore_add_tlv(&mbx->offset, CHANNEL_TLV_LIST_END,
        sizeof(struct channel_list_end_tlv));

 ecore_iov_send_response(p_hwfn, p_ptt, vf_info, length, status);
}
