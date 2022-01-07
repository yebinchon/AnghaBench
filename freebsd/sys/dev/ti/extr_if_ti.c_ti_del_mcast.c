
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int uint16_t ;
typedef int u_int ;
struct ti_softc {int ti_hwrev; int ti_dev; } ;
struct ti_cmd_desc {int dummy; } ;
struct sockaddr_dl {int dummy; } ;
typedef int caddr_t ;


 int CSR_WRITE_4 (struct ti_softc*,int ,int) ;
 scalar_t__ LLADDR (struct sockaddr_dl*) ;
 int TI_CMD_DEL_MCAST_ADDR ;
 int TI_CMD_EXT_DEL_MCAST ;
 int TI_DO_CMD (int ,int ,int ) ;
 int TI_DO_CMD_EXT (int ,int ,int ,int ,int) ;
 int TI_GCR_MAR0 ;
 int TI_GCR_MAR1 ;


 int device_printf (int ,char*) ;
 int htons (int ) ;

__attribute__((used)) static u_int
ti_del_mcast(void *arg, struct sockaddr_dl *sdl, u_int count)
{
 struct ti_softc *sc = arg;
 struct ti_cmd_desc cmd;
 uint16_t *m;
 uint32_t ext[2] = {0, 0};

 m = (uint16_t *)LLADDR(sdl);

 switch (sc->ti_hwrev) {
 case 129:
  CSR_WRITE_4(sc, TI_GCR_MAR0, htons(m[0]));
  CSR_WRITE_4(sc, TI_GCR_MAR1, (htons(m[1]) << 16) | htons(m[2]));
  TI_DO_CMD(TI_CMD_DEL_MCAST_ADDR, 0, 0);
  break;
 case 128:
  ext[0] = htons(m[0]);
  ext[1] = (htons(m[1]) << 16) | htons(m[2]);
  TI_DO_CMD_EXT(TI_CMD_EXT_DEL_MCAST, 0, 0, (caddr_t)&ext, 2);
  break;
 default:
  device_printf(sc->ti_dev, "unknown hwrev\n");
  return (0);
 }

 return (1);
}
