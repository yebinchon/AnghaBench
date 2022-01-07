
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource {int dummy; } ;
struct mss_info {int dummy; } ;
typedef int device_t ;


 int DELAY (int) ;
 int RF_ACTIVE ;
 int SBDSP_CMD ;
 int SBDSP_STATUS ;
 int SYS_RES_IOPORT ;
 struct resource* bus_alloc_resource_any (int ,int ,int*,int ) ;
 int bus_release_resource (int ,int ,int,struct resource*) ;
 int port_rd (struct resource*,int ) ;
 int port_wr (struct resource*,int ,int) ;

__attribute__((used)) static int
azt2320_mss_mode(struct mss_info *mss, device_t dev)
{
 struct resource *sbport;
 int i, ret, rid;

 rid = 0;
 ret = -1;
 sbport = bus_alloc_resource_any(dev, SYS_RES_IOPORT, &rid, RF_ACTIVE);
 if (sbport) {
  for (i = 0; i < 1000; i++) {
   if ((port_rd(sbport, SBDSP_STATUS) & 0x80))
    DELAY((i > 100) ? 1000 : 10);
   else {
    port_wr(sbport, SBDSP_CMD, 0x09);
    break;
   }
  }
  for (i = 0; i < 1000; i++) {
   if ((port_rd(sbport, SBDSP_STATUS) & 0x80))
    DELAY((i > 100) ? 1000 : 10);
   else {
    port_wr(sbport, SBDSP_CMD, 0x00);
    ret = 0;
    break;
   }
  }
  DELAY(1000);
  bus_release_resource(dev, SYS_RES_IOPORT, rid, sbport);
 }
 return ret;
}
