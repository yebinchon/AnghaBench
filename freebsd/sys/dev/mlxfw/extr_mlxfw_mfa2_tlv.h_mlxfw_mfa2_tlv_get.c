
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct mlxfw_mfa2_tlv {int dummy; } ;
struct mlxfw_mfa2_file {int dummy; } ;


 int mlxfw_mfa2_valid_ptr (struct mlxfw_mfa2_file const*,int const*) ;

__attribute__((used)) static inline const struct mlxfw_mfa2_tlv *
mlxfw_mfa2_tlv_get(const struct mlxfw_mfa2_file *mfa2_file, const u8 *ptr)
{
 if (!mlxfw_mfa2_valid_ptr(mfa2_file, ptr) ||
     !mlxfw_mfa2_valid_ptr(mfa2_file, ptr + sizeof(struct mlxfw_mfa2_tlv)))
  return ((void*)0);
 return (const struct mlxfw_mfa2_tlv *) ptr;
}
