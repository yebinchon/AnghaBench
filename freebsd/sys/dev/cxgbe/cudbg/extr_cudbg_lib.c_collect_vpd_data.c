
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct struct_vpd_data {int fw_build; int fw_micro; int fw_minor; int fw_major; int vpd_vers; int scfg_vers; int * mn; int * na; int * bn; int * sn; } ;
struct cudbg_init {struct adapter* adap; } ;
struct cudbg_error {int dummy; } ;
struct cudbg_buffer {int size; scalar_t__ data; } ;
struct TYPE_2__ {int fw_vers; } ;
struct adapter {TYPE_1__ params; } ;


 int BN_MAX_LEN ;
 int BN_REG_ADDR ;
 int BN_T6_ADDR ;
 int EDOOFUS ;
 int G_FW_HDR_FW_VER_BUILD (int) ;
 int G_FW_HDR_FW_VER_MAJOR (int) ;
 int G_FW_HDR_FW_VER_MICRO (int) ;
 int G_FW_HDR_FW_VER_MINOR (int) ;
 int MN_MAX_LEN ;
 int MN_REG_ADDR ;
 int MN_T6_ADDR ;
 int NA_MAX_LEN ;
 int NA_REG_ADDR ;
 int NA_T6_ADDR ;
 int SCFG_VER_ADDR ;
 int SCFG_VER_LEN ;
 int SN_MAX_LEN ;
 int SN_REG_ADDR ;
 int SN_T6_ADDR ;
 int VPD_VER_ADDR ;
 int VPD_VER_LEN ;
 int compress_buff (struct cudbg_buffer*,struct cudbg_buffer*) ;
 int get_scratch_buff (struct cudbg_buffer*,int,struct cudbg_buffer*) ;
 scalar_t__ is_fw_attached (struct cudbg_init*) ;
 scalar_t__ is_t5 (struct adapter*) ;
 scalar_t__ is_t6 (struct adapter*) ;
 int read_vpd_reg (struct adapter*,int ,int ,int *) ;
 int release_scratch_buff (struct cudbg_buffer*,struct cudbg_buffer*) ;
 int simple_strtoul (char*,int *,int) ;
 int sprintf (char*,char*,char,char) ;
 int t4_get_fw_version (struct adapter*,int*) ;
 int t4_get_scfg_version (struct adapter*,int *) ;
 int t4_get_vpd_version (struct adapter*,int *) ;
 int write_compression_hdr (struct cudbg_buffer*,struct cudbg_buffer*) ;

__attribute__((used)) static int collect_vpd_data(struct cudbg_init *pdbg_init,
       struct cudbg_buffer *dbg_buff,
       struct cudbg_error *cudbg_err)
{
 return (EDOOFUS);
}
