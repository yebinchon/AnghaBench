
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct mlxfw_mfa2_tlv_multi {int total_len; } ;
struct mlxfw_mfa2_tlv {scalar_t__ type; } ;
struct mlxfw_mfa2_file {int dummy; } ;


 scalar_t__ MLXFW_MFA2_TLV_MULTI_PART ;
 int MLXFW_MFA2_TLV_TOTAL_SIZE (struct mlxfw_mfa2_tlv const*) ;
 int NLA_ALIGN (int) ;
 int be16_to_cpu (int ) ;
 struct mlxfw_mfa2_tlv const* mlxfw_mfa2_tlv_get (struct mlxfw_mfa2_file const*,int const*) ;
 struct mlxfw_mfa2_tlv_multi* mlxfw_mfa2_tlv_multi_get (struct mlxfw_mfa2_file const*,struct mlxfw_mfa2_tlv const*) ;

const struct mlxfw_mfa2_tlv *
mlxfw_mfa2_tlv_next(const struct mlxfw_mfa2_file *mfa2_file,
      const struct mlxfw_mfa2_tlv *tlv)
{
 const struct mlxfw_mfa2_tlv_multi *multi;
 u16 tlv_len;
 const u8 *next;

 tlv_len = MLXFW_MFA2_TLV_TOTAL_SIZE(tlv);

 if (tlv->type == MLXFW_MFA2_TLV_MULTI_PART) {
  multi = mlxfw_mfa2_tlv_multi_get(mfa2_file, tlv);
  tlv_len = NLA_ALIGN(tlv_len + be16_to_cpu(multi->total_len));
 }

 next = (const u8 *) tlv + tlv_len;
 return mlxfw_mfa2_tlv_get(mfa2_file, next);
}
