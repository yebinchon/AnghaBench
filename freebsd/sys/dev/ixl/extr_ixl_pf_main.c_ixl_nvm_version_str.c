
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct sbuf {int dummy; } ;
struct TYPE_4__ {int oem_ver; int version; int eetrack; } ;
struct TYPE_3__ {int api_min_ver; int api_maj_ver; int fw_build; int fw_min_ver; int fw_maj_ver; } ;
struct i40e_hw {TYPE_2__ nvm; TYPE_1__ aq; } ;


 int IXL_NVM_VERSION_HI_MASK ;
 int IXL_NVM_VERSION_HI_SHIFT ;
 int IXL_NVM_VERSION_LO_MASK ;
 int IXL_NVM_VERSION_LO_SHIFT ;
 int sbuf_printf (struct sbuf*,char*,int ,int ,int ,int ,int ,int,int,int ,int ,int ,int ) ;

void
ixl_nvm_version_str(struct i40e_hw *hw, struct sbuf *buf)
{
 u8 oem_ver = (u8)(hw->nvm.oem_ver >> 24);
 u16 oem_build = (u16)((hw->nvm.oem_ver >> 16) & 0xFFFF);
 u8 oem_patch = (u8)(hw->nvm.oem_ver & 0xFF);

 sbuf_printf(buf,
     "fw %d.%d.%05d api %d.%d nvm %x.%02x etid %08x oem %d.%d.%d",
     hw->aq.fw_maj_ver, hw->aq.fw_min_ver, hw->aq.fw_build,
     hw->aq.api_maj_ver, hw->aq.api_min_ver,
     (hw->nvm.version & IXL_NVM_VERSION_HI_MASK) >>
     IXL_NVM_VERSION_HI_SHIFT,
     (hw->nvm.version & IXL_NVM_VERSION_LO_MASK) >>
     IXL_NVM_VERSION_LO_SHIFT,
     hw->nvm.eetrack,
     oem_ver, oem_build, oem_patch);
}
