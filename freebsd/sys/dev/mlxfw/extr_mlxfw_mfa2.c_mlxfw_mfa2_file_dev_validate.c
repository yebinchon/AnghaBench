
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16 ;
struct mlxfw_mfa2_tlv_psid {int psid; } ;
struct mlxfw_mfa2_tlv_multi {int dummy; } ;
struct mlxfw_mfa2_tlv_component_ptr {int component_index; } ;
struct mlxfw_mfa2_tlv {int len; } ;
struct mlxfw_mfa2_file {int dummy; } ;


 int DUMP_PREFIX_NONE ;
 int MLXFW_MFA2_TLV_COMPONENT_PTR ;
 int MLXFW_MFA2_TLV_PSID ;
 scalar_t__ be16_to_cpu (int ) ;
 struct mlxfw_mfa2_tlv_component_ptr* mlxfw_mfa2_tlv_component_ptr_get (struct mlxfw_mfa2_file const*,struct mlxfw_mfa2_tlv const*) ;
 int mlxfw_mfa2_tlv_multi_child_count (struct mlxfw_mfa2_file const*,struct mlxfw_mfa2_tlv_multi const*,int ,scalar_t__*) ;
 struct mlxfw_mfa2_tlv* mlxfw_mfa2_tlv_multi_child_find (struct mlxfw_mfa2_file const*,struct mlxfw_mfa2_tlv_multi const*,int ,scalar_t__) ;
 struct mlxfw_mfa2_tlv_multi* mlxfw_mfa2_tlv_multi_get (struct mlxfw_mfa2_file const*,struct mlxfw_mfa2_tlv const*) ;
 int mlxfw_mfa2_tlv_multi_validate (struct mlxfw_mfa2_file const*,struct mlxfw_mfa2_tlv_multi const*) ;
 struct mlxfw_mfa2_tlv_psid* mlxfw_mfa2_tlv_psid_get (struct mlxfw_mfa2_file const*,struct mlxfw_mfa2_tlv const*) ;
 int pr_debug (char*,scalar_t__) ;
 int pr_err (char*,scalar_t__) ;
 int print_hex_dump_debug (char*,int ,int,int,int ,scalar_t__,int) ;

__attribute__((used)) static bool
mlxfw_mfa2_file_dev_validate(const struct mlxfw_mfa2_file *mfa2_file,
        const struct mlxfw_mfa2_tlv *dev_tlv,
        u16 dev_idx)
{
 const struct mlxfw_mfa2_tlv_component_ptr *cptr;
 const struct mlxfw_mfa2_tlv_multi *multi;
 const struct mlxfw_mfa2_tlv_psid *psid;
 const struct mlxfw_mfa2_tlv *tlv;
 u16 cptr_count;
 u16 cptr_idx;
 int err;

 pr_debug("Device %d\n", dev_idx);

 multi = mlxfw_mfa2_tlv_multi_get(mfa2_file, dev_tlv);
 if (!multi) {
  pr_err("Device %d is not a valid TLV error\n", dev_idx);
  return 0;
 }

 if (!mlxfw_mfa2_tlv_multi_validate(mfa2_file, multi))
  return 0;


 tlv = mlxfw_mfa2_tlv_multi_child_find(mfa2_file, multi,
           MLXFW_MFA2_TLV_PSID, 0);
 if (!tlv) {
  pr_err("Device %d does not have PSID\n", dev_idx);
  return 0;
 }

 psid = mlxfw_mfa2_tlv_psid_get(mfa2_file, tlv);
 if (!psid) {
  pr_err("Device %d PSID TLV is not valid\n", dev_idx);
  return 0;
 }

 print_hex_dump_debug("  -- Device PSID ", DUMP_PREFIX_NONE, 16, 16,
        psid->psid, be16_to_cpu(tlv->len), 1);


 err = mlxfw_mfa2_tlv_multi_child_count(mfa2_file, multi,
            MLXFW_MFA2_TLV_COMPONENT_PTR,
            &cptr_count);
 if (err)
  return 0;

 if (cptr_count == 0) {
  pr_err("Device %d has no components\n", dev_idx);
  return 0;
 }

 for (cptr_idx = 0; cptr_idx < cptr_count; cptr_idx++) {
  tlv = mlxfw_mfa2_tlv_multi_child_find(mfa2_file, multi,
            MLXFW_MFA2_TLV_COMPONENT_PTR,
            cptr_idx);
  if (!tlv)
   return 0;

  cptr = mlxfw_mfa2_tlv_component_ptr_get(mfa2_file, tlv);
  if (!cptr) {
   pr_err("Device %d COMPONENT_PTR TLV is not valid\n",
          dev_idx);
   return 0;
  }

  pr_debug("  -- Component index %d\n",
    be16_to_cpu(cptr->component_index));
 }
 return 1;
}
