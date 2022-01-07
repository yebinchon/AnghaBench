
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct iwm_mvm_tx_resp {int frame_count; int status; } ;


 int le32_to_cpup (int*) ;

__attribute__((used)) static inline uint32_t iwm_mvm_get_scd_ssn(struct iwm_mvm_tx_resp *tx_resp)
{
 return le32_to_cpup((uint32_t *)&tx_resp->status +
       tx_resp->frame_count) & 0xfff;
}
