
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_offset_t ;
typedef scalar_t__ u_int32_t ;
struct smbios_eps {int length; scalar_t__ structure_table_address; int structure_table_length; int number_structures; } ;
struct ipmi_get_info {int dummy; } ;


 int SMBIOS_LEN ;
 int SMBIOS_OFF ;
 int SMBIOS_SIG ;
 int SMBIOS_START ;
 int SMBIOS_STEP ;
 scalar_t__ bios_sigsearch (int ,int ,int ,int ,int ) ;
 int bzero (struct ipmi_get_info*,int) ;
 void* pmap_mapbios (scalar_t__,int) ;
 int pmap_unmapbios (int ,int) ;
 scalar_t__ smbios_cksum (struct smbios_eps*) ;
 int smbios_ipmi_info ;
 int smbios_walk_table (void*,int ,int ,struct ipmi_get_info*) ;

__attribute__((used)) static void
ipmi_smbios_probe(struct ipmi_get_info *info)
{
 struct smbios_eps *header;
 void *table;
 u_int32_t addr;

 bzero(info, sizeof(struct ipmi_get_info));


 addr = bios_sigsearch(SMBIOS_START, SMBIOS_SIG, SMBIOS_LEN,
         SMBIOS_STEP, SMBIOS_OFF);
 if (addr == 0)
  return;






 header = pmap_mapbios(addr, sizeof(struct smbios_eps));
 table = pmap_mapbios(addr, header->length);
 pmap_unmapbios((vm_offset_t)header, sizeof(struct smbios_eps));
 header = table;
 if (smbios_cksum(header) != 0) {
  pmap_unmapbios((vm_offset_t)header, header->length);
  return;
 }


 table = pmap_mapbios(header->structure_table_address,
     header->structure_table_length);
 smbios_walk_table(table, header->number_structures, smbios_ipmi_info,
     info);


 pmap_unmapbios((vm_offset_t)table, header->structure_table_length);
 pmap_unmapbios((vm_offset_t)header, header->length);
}
