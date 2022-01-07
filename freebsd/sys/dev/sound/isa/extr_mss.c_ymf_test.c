
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mss_info {int conf_rid; int * conf_base; } ;
typedef int device_t ;


 int OPL3SAx_DMACONF ;
 int OPL3SAx_MISC ;
 int RF_ACTIVE ;
 int SYS_RES_IOPORT ;
 int * bus_alloc_resource (int ,int ,int*,int,int,int,int ) ;
 int bus_release_resource (int ,int ,int,int *) ;
 int conf_rd (struct mss_info*,int ) ;
 int port_rd (int *,int ) ;
 int port_wr (int *,int ,int) ;

__attribute__((used)) static char *
ymf_test(device_t dev, struct mss_info *mss)
{
     static int ports[] = {0x370, 0x310, 0x538};
     int p, i, j, version;
     static char *chipset[] = {
  ((void*)0),
  "OPL3-SA2 (YMF711)",
  "OPL3-SA3 (YMF715)",
  "OPL3-SA3 (YMF715)",
  "OPL3-SAx (YMF719)",
  "OPL3-SAx (YMF719)",
  "OPL3-SAx (YMF719)",
  "OPL3-SAx (YMF719)",
     };

     for (p = 0; p < 3; p++) {
  mss->conf_rid = 1;
  mss->conf_base = bus_alloc_resource(dev,
        SYS_RES_IOPORT,
        &mss->conf_rid,
        ports[p], ports[p] + 1, 2,
        RF_ACTIVE);
  if (!mss->conf_base) return 0;


  i = port_rd(mss->conf_base, 0);
  port_wr(mss->conf_base, 0, OPL3SAx_DMACONF);
  j = (port_rd(mss->conf_base, 0) == OPL3SAx_DMACONF)? 1 : 0;
  port_wr(mss->conf_base, 0, i);
  if (!j) {
       bus_release_resource(dev, SYS_RES_IOPORT,
           mss->conf_rid, mss->conf_base);
       mss->conf_base = ((void*)0);
       continue;
  }
  version = conf_rd(mss, OPL3SAx_MISC) & 0x07;
  return chipset[version];
     }
     return ((void*)0);
}
