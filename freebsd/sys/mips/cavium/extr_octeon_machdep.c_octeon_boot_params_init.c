
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uintmax_t ;
typedef scalar_t__ uint64_t ;
typedef scalar_t__ register_t ;
struct TYPE_4__ {int desc_version; } ;
typedef TYPE_1__ octeon_boot_descriptor_t ;
typedef int cvmx_bootinfo_t ;
struct TYPE_5__ {scalar_t__ led_display_base_addr; scalar_t__ board_type; int board_rev_major; scalar_t__ phy_mem_desc_addr; } ;


 scalar_t__ CVMX_BOARD_TYPE_EBT3000 ;
 scalar_t__ MAX_APP_DESC_ADDR ;
 int __cvmx_helper_cfg_init () ;
 int cvmx_bootmem_init (scalar_t__) ;
 int cvmx_safe_printf (char*,...) ;
 TYPE_3__* cvmx_sysinfo_get () ;
 int ebt3000_str_write (char*) ;
 int octeon_feature_init () ;
 int * octeon_process_app_desc_ver_6 (TYPE_1__*) ;
 int platform_reset () ;

__attribute__((used)) static void
octeon_boot_params_init(register_t ptr)
{
 octeon_boot_descriptor_t *app_desc_ptr;
 cvmx_bootinfo_t *octeon_bootinfo;

 if (ptr == 0 || ptr >= MAX_APP_DESC_ADDR) {
  cvmx_safe_printf("app descriptor passed at invalid address %#jx\n",
      (uintmax_t)ptr);
  platform_reset();
 }

 app_desc_ptr = (octeon_boot_descriptor_t *)(intptr_t)ptr;
 if (app_desc_ptr->desc_version < 6) {
  cvmx_safe_printf("Your boot code is too old to be supported.\n");
  platform_reset();
 }
 octeon_bootinfo = octeon_process_app_desc_ver_6(app_desc_ptr);
 if (octeon_bootinfo == ((void*)0)) {
  cvmx_safe_printf("Could not parse boot descriptor.\n");
  platform_reset();
 }

 if (cvmx_sysinfo_get()->led_display_base_addr != 0) {




  if (cvmx_sysinfo_get()->board_type == CVMX_BOARD_TYPE_EBT3000 &&
      cvmx_sysinfo_get()->board_rev_major == 1)
   ebt3000_str_write("FBSD");
  else
   ebt3000_str_write("FreeBSD!");
 }

 if (cvmx_sysinfo_get()->phy_mem_desc_addr == (uint64_t)0) {
  cvmx_safe_printf("Your boot loader did not supply a memory descriptor.\n");
  platform_reset();
 }
 cvmx_bootmem_init(cvmx_sysinfo_get()->phy_mem_desc_addr);

 octeon_feature_init();

 __cvmx_helper_cfg_init();
}
