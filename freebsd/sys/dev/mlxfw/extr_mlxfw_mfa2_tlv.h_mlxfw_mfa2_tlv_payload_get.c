
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct mlxfw_mfa2_tlv {scalar_t__ type; void const* data; int len; } ;
struct mlxfw_mfa2_file {int dummy; } ;


 size_t be16_to_cpu (int ) ;
 int mlxfw_mfa2_valid_ptr (struct mlxfw_mfa2_file const*,scalar_t__ const*) ;

__attribute__((used)) static inline const void *
mlxfw_mfa2_tlv_payload_get(const struct mlxfw_mfa2_file *mfa2_file,
      const struct mlxfw_mfa2_tlv *tlv, u8 payload_type,
      size_t payload_size, bool varsize)
{
 const u8 *tlv_top;

 tlv_top = (const u8 *) tlv + be16_to_cpu(tlv->len) - 1;
 if (!mlxfw_mfa2_valid_ptr(mfa2_file, (const u8 *) tlv) ||
     !mlxfw_mfa2_valid_ptr(mfa2_file, tlv_top))
  return ((void*)0);
 if (tlv->type != payload_type)
  return ((void*)0);
 if (varsize && (be16_to_cpu(tlv->len) < payload_size))
  return ((void*)0);
 if (!varsize && (be16_to_cpu(tlv->len) != payload_size))
  return ((void*)0);

 return tlv->data;
}
