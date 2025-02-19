
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
struct eui64 {int dummy; } ;
struct bus_info {int bus_name; int irmc; int cmc; int isc; int bmc; int pmc; int cyc_clk_acc; int max_rec; int max_rom; int generation; int link_spd; int eui64; } ;
typedef int addr ;


 int EUI64_SIZ ;
 int eui64_ntoa (struct eui64*,char*,int) ;
 int fweui2eui64 (int *,struct eui64*) ;
 int printf (char*,int,int,int,int,int,int,int,int,int,int,int,char*) ;

__attribute__((used)) static void
parse_bus_info_block(u_int32_t *p)
{
 char addr[EUI64_SIZ];
 struct bus_info *bi;
 struct eui64 eui;

 bi = (struct bus_info *)p;
 fweui2eui64(&bi->eui64, &eui);
 eui64_ntoa(&eui, addr, sizeof(addr));
 printf("bus_name: 0x%04x\n"
  "irmc:%d cmc:%d isc:%d bmc:%d pmc:%d\n"
  "cyc_clk_acc:%d max_rec:%d max_rom:%d\n"
  "generation:%d link_spd:%d\n"
  "EUI64: %s\n",
  bi->bus_name,
  bi->irmc, bi->cmc, bi->isc, bi->bmc, bi->pmc,
  bi->cyc_clk_acc, bi->max_rec, bi->max_rom,
  bi->generation, bi->link_spd,
  addr);
}
