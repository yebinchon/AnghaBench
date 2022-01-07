
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
typedef int driver_t ;
typedef int device_t ;
struct TYPE_4__ {scalar_t__ base; scalar_t__ width; } ;
struct TYPE_5__ {TYPE_1__ s; int u64; } ;
typedef TYPE_2__ cvmx_mio_boot_reg_cfgx_t ;
struct TYPE_6__ {scalar_t__ board_type; scalar_t__ compact_flash_common_base_addr; scalar_t__ compact_flash_attribute_base_addr; } ;


 int BUS_ADD_CHILD (int ,int ,char*,int ) ;



 scalar_t__ CVMX_BOARD_TYPE_SIM ;
 int CVMX_MIO_BOOT_REG_CFGX (int) ;
 int DELAY (int ) ;
 int NR_TRIES ;
 int STATUS_BSY ;
 int TF_STATUS ;
 int WAIT_DELAY ;
 int base_addr ;
 size_t bus_type ;
 int cf_inb_16 (int ) ;
 int cf_inb_8 (int ) ;
 char** cf_type ;
 int cvmx_phys_to_ptr (scalar_t__) ;
 int cvmx_read_csr (int ) ;
 TYPE_3__* cvmx_sysinfo_get () ;
 int printf (char*,...) ;

__attribute__((used)) static void cf_identify (driver_t *drv, device_t parent)
{
 int bus_region;
 int count = 0;
 cvmx_mio_boot_reg_cfgx_t cfg;
 uint64_t phys_base;

     if (cvmx_sysinfo_get()->board_type == CVMX_BOARD_TYPE_SIM)
  return;

 phys_base = cvmx_sysinfo_get()->compact_flash_common_base_addr;
 if (phys_base == 0)
  return;
 base_addr = cvmx_phys_to_ptr(phys_base);

        for (bus_region = 0; bus_region < 8; bus_region++)
        {
                cfg.u64 = cvmx_read_csr(CVMX_MIO_BOOT_REG_CFGX(bus_region));
                if (cfg.s.base == phys_base >> 16)
                {
   if (cvmx_sysinfo_get()->compact_flash_attribute_base_addr == 0)
    bus_type = 128;
   else
    bus_type = (cfg.s.width) ? 130 : 129;
                        printf("Compact flash found in bootbus region %d (%s).\n", bus_region, cf_type[bus_type]);
                        break;
                }
        }

 switch (bus_type)
 {
 case 129:
 case 128:

  while (cf_inb_8(TF_STATUS) & STATUS_BSY) {
   if ((count++) == NR_TRIES ) {
    printf("Compact Flash not present\n");
    return;
                 }
   DELAY(WAIT_DELAY);
         }
  break;
 case 130:
 default:

  while (cf_inb_16(TF_STATUS) & STATUS_BSY) {
   if ((count++) == NR_TRIES ) {
    printf("Compact Flash not present\n");
    return;
                 }
   DELAY(WAIT_DELAY);
         }
  break;
 }

 BUS_ADD_CHILD(parent, 0, "cf", 0);
}
