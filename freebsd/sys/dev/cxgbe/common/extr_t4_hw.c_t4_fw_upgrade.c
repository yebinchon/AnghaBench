
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct fw_hdr {int magic; } ;
struct adapter {int dummy; } ;


 int EINVAL ;
 scalar_t__ FW_HDR_MAGIC_BOOTSTRAP ;
 scalar_t__ be32_to_cpu (int ) ;
 int t4_fw_halt (struct adapter*,unsigned int,int) ;
 int t4_fw_matches_chip (struct adapter*,struct fw_hdr const*) ;
 int t4_fw_restart (struct adapter*,unsigned int) ;
 int t4_load_fw (struct adapter*,int const*,unsigned int) ;

int t4_fw_upgrade(struct adapter *adap, unsigned int mbox,
    const u8 *fw_data, unsigned int size, int force)
{
 const struct fw_hdr *fw_hdr = (const struct fw_hdr *)fw_data;
 unsigned int bootstrap =
     be32_to_cpu(fw_hdr->magic) == FW_HDR_MAGIC_BOOTSTRAP;
 int ret;

 if (!t4_fw_matches_chip(adap, fw_hdr))
  return -EINVAL;

 if (!bootstrap) {
  ret = t4_fw_halt(adap, mbox, force);
  if (ret < 0 && !force)
   return ret;
 }

 ret = t4_load_fw(adap, fw_data, size);
 if (ret < 0 || bootstrap)
  return ret;

 return t4_fw_restart(adap, mbox);
}
