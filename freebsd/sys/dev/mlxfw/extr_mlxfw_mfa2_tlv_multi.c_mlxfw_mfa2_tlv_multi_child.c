
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct mlxfw_mfa2_tlv_multi {int dummy; } ;
struct mlxfw_mfa2_tlv {int dummy; } ;
struct mlxfw_mfa2_file {int dummy; } ;


 size_t NLA_ALIGN (int) ;
 struct mlxfw_mfa2_tlv const* mlxfw_mfa2_tlv_get (struct mlxfw_mfa2_file const*,int const*) ;

const struct mlxfw_mfa2_tlv *
mlxfw_mfa2_tlv_multi_child(const struct mlxfw_mfa2_file *mfa2_file,
      const struct mlxfw_mfa2_tlv_multi *multi)
{
 size_t multi_len;

 multi_len = NLA_ALIGN(sizeof(struct mlxfw_mfa2_tlv_multi));
 return mlxfw_mfa2_tlv_get(mfa2_file, (const u8 *) multi + multi_len);
}
