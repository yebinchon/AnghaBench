
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
typedef scalar_t__ u_char ;
struct bfe_softc {int dummy; } ;


 int BFE_CAM_BUSY ;
 int BFE_CAM_CTRL ;
 int BFE_CAM_DATA_HI ;
 int BFE_CAM_DATA_LO ;
 int BFE_CAM_HI_VALID ;
 int BFE_CAM_INDEX_SHIFT ;
 int BFE_CAM_WRITE ;
 int CSR_WRITE_4 (struct bfe_softc*,int ,int) ;
 int bfe_wait_bit (struct bfe_softc*,int ,int ,int,int) ;

__attribute__((used)) static void
bfe_cam_write(struct bfe_softc *sc, u_char *data, int index)
{
 u_int32_t val;

 val = ((u_int32_t) data[2]) << 24;
 val |= ((u_int32_t) data[3]) << 16;
 val |= ((u_int32_t) data[4]) << 8;
 val |= ((u_int32_t) data[5]);
 CSR_WRITE_4(sc, BFE_CAM_DATA_LO, val);
 val = (BFE_CAM_HI_VALID |
   (((u_int32_t) data[0]) << 8) |
   (((u_int32_t) data[1])));
 CSR_WRITE_4(sc, BFE_CAM_DATA_HI, val);
 CSR_WRITE_4(sc, BFE_CAM_CTRL, (BFE_CAM_WRITE |
    ((u_int32_t) index << BFE_CAM_INDEX_SHIFT)));
 bfe_wait_bit(sc, BFE_CAM_CTRL, BFE_CAM_BUSY, 10000, 1);
}
