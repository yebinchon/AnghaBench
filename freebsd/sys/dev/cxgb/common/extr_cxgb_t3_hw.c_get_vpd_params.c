
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int vpd ;
typedef void* u8 ;
typedef int u32 ;
struct vpd_params {int* port_type; int* eth_base; void** xauicfg; int ec; int sn; void* mem_timing; void* mdc; void* uclk; void* mclk; void* cclk; } ;
struct t3_vpd {int id_tag; int * na_data; int xaui1cfg_data; int xaui0cfg_data; int * port3_data; int * port2_data; int * port1_data; int * port0_data; int ec_data; int sn_data; int mt_data; int mdc_data; int uclk_data; int mclk_data; int cclk_data; } ;
struct TYPE_6__ {scalar_t__ rev; } ;
struct TYPE_7__ {TYPE_1__ params; } ;
typedef TYPE_2__ adapter_t ;


 int ECNUM_LEN ;
 int SERNUM_LEN ;
 int VPD_BASE ;
 int hex2int (int ) ;
 int memcpy (int ,int ,int ) ;
 void* simple_strtoul (int ,int *,int) ;
 int t3_seeprom_read (TYPE_2__*,int,int *) ;
 scalar_t__ uses_xaui (TYPE_2__*) ;

__attribute__((used)) static int get_vpd_params(adapter_t *adapter, struct vpd_params *p)
{
 int i, addr, ret;
 struct t3_vpd vpd;





 ret = t3_seeprom_read(adapter, VPD_BASE, (u32 *)&vpd);
 if (ret)
  return ret;
 addr = vpd.id_tag == 0x82 ? VPD_BASE : 0;

 for (i = 0; i < sizeof(vpd); i += 4) {
  ret = t3_seeprom_read(adapter, addr + i,
          (u32 *)((u8 *)&vpd + i));
  if (ret)
   return ret;
 }

 p->cclk = simple_strtoul(vpd.cclk_data, ((void*)0), 10);
 p->mclk = simple_strtoul(vpd.mclk_data, ((void*)0), 10);
 p->uclk = simple_strtoul(vpd.uclk_data, ((void*)0), 10);
 p->mdc = simple_strtoul(vpd.mdc_data, ((void*)0), 10);
 p->mem_timing = simple_strtoul(vpd.mt_data, ((void*)0), 10);
 memcpy(p->sn, vpd.sn_data, SERNUM_LEN);
 memcpy(p->ec, vpd.ec_data, ECNUM_LEN);


 if (adapter->params.rev == 0 && !vpd.port0_data[0]) {
  p->port_type[0] = uses_xaui(adapter) ? 1 : 2;
  p->port_type[1] = uses_xaui(adapter) ? 6 : 2;
 } else {
  p->port_type[0] = (u8)hex2int(vpd.port0_data[0]);
  p->port_type[1] = (u8)hex2int(vpd.port1_data[0]);
  p->port_type[2] = (u8)hex2int(vpd.port2_data[0]);
  p->port_type[3] = (u8)hex2int(vpd.port3_data[0]);
  p->xauicfg[0] = simple_strtoul(vpd.xaui0cfg_data, ((void*)0), 16);
  p->xauicfg[1] = simple_strtoul(vpd.xaui1cfg_data, ((void*)0), 16);
 }

 for (i = 0; i < 6; i++)
  p->eth_base[i] = hex2int(vpd.na_data[2 * i]) * 16 +
     hex2int(vpd.na_data[2 * i + 1]);
 return 0;
}
