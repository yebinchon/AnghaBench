
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int uintmax_t ;
struct TYPE_7__ {int cvmx_desc_vaddr; } ;
typedef TYPE_1__ octeon_boot_descriptor_t ;
struct TYPE_8__ {int major_version; int board_serial_number; int led_display_base_addr; int core_mask; int compact_flash_attribute_base_addr; int compact_flash_common_base_addr; int mac_addr_count; int mac_addr_base; int eclock_hz; int board_rev_minor; int board_rev_major; int board_type; int phy_mem_desc_addr; scalar_t__ minor_version; } ;
typedef TYPE_2__ cvmx_bootinfo_t ;
struct TYPE_9__ {int board_serial_number; int led_display_base_addr; int core_mask; int compact_flash_attribute_base_addr; int compact_flash_common_base_addr; int mac_addr_count; int mac_addr_base; } ;


 TYPE_2__* cvmx_phys_to_ptr (int) ;
 int cvmx_safe_printf (char*,int,...) ;
 TYPE_5__* cvmx_sysinfo_get () ;
 int cvmx_sysinfo_minimal_initialize (int ,int ,int ,int ,int ) ;
 int memcpy (int ,int ,int) ;

__attribute__((used)) static cvmx_bootinfo_t *
octeon_process_app_desc_ver_6(octeon_boot_descriptor_t *app_desc_ptr)
{
 cvmx_bootinfo_t *octeon_bootinfo;


 if (app_desc_ptr->cvmx_desc_vaddr == 0 ||
     app_desc_ptr->cvmx_desc_vaddr == 0xfffffffful) {
             cvmx_safe_printf("Bad octeon_bootinfo %#jx\n",
      (uintmax_t)app_desc_ptr->cvmx_desc_vaddr);
  return (((void*)0));
 }

     octeon_bootinfo = cvmx_phys_to_ptr(app_desc_ptr->cvmx_desc_vaddr);
        if (octeon_bootinfo->major_version != 1) {
             cvmx_safe_printf("Incompatible CVMX descriptor from bootloader: %d.%d %p\n",
      (int) octeon_bootinfo->major_version,
      (int) octeon_bootinfo->minor_version, octeon_bootinfo);
  return (((void*)0));
 }

 cvmx_sysinfo_minimal_initialize(octeon_bootinfo->phy_mem_desc_addr,
     octeon_bootinfo->board_type,
     octeon_bootinfo->board_rev_major,
     octeon_bootinfo->board_rev_minor,
     octeon_bootinfo->eclock_hz);
 memcpy(cvmx_sysinfo_get()->mac_addr_base,
        octeon_bootinfo->mac_addr_base, 6);
 cvmx_sysinfo_get()->mac_addr_count = octeon_bootinfo->mac_addr_count;
 cvmx_sysinfo_get()->compact_flash_common_base_addr =
  octeon_bootinfo->compact_flash_common_base_addr;
 cvmx_sysinfo_get()->compact_flash_attribute_base_addr =
  octeon_bootinfo->compact_flash_attribute_base_addr;
 cvmx_sysinfo_get()->core_mask = octeon_bootinfo->core_mask;
 cvmx_sysinfo_get()->led_display_base_addr =
  octeon_bootinfo->led_display_base_addr;
 memcpy(cvmx_sysinfo_get()->board_serial_number,
        octeon_bootinfo->board_serial_number,
        sizeof cvmx_sysinfo_get()->board_serial_number);
 return (octeon_bootinfo);
}
