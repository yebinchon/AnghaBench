
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iwmbt_version {int fw_patch_num; int fw_build_yy; int fw_build_ww; int fw_build_num; int fw_revision; int fw_variant; int hw_revision; int hw_variant; int hw_platform; int status; } ;


 int iwmbt_info (char*,int ) ;

__attribute__((used)) static void
iwmbt_dump_version(struct iwmbt_version *ver)
{
 iwmbt_info("status       0x%02x", ver->status);
 iwmbt_info("hw_platform  0x%02x", ver->hw_platform);
 iwmbt_info("hw_variant   0x%02x", ver->hw_variant);
 iwmbt_info("hw_revision  0x%02x", ver->hw_revision);
 iwmbt_info("fw_variant   0x%02x", ver->fw_variant);
 iwmbt_info("fw_revision  0x%02x", ver->fw_revision);
 iwmbt_info("fw_build_num 0x%02x", ver->fw_build_num);
 iwmbt_info("fw_build_ww  0x%02x", ver->fw_build_ww);
 iwmbt_info("fw_build_yy  0x%02x", ver->fw_build_yy);
 iwmbt_info("fw_patch_num 0x%02x", ver->fw_patch_num);
}
