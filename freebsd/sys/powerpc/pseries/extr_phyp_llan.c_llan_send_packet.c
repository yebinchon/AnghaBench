
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint64_t ;
struct llan_softc {int ifp; int unit; } ;
typedef int bus_size_t ;
struct TYPE_3__ {int ds_addr; scalar_t__ ds_len; } ;
typedef TYPE_1__ bus_dma_segment_t ;
typedef int bufdescs ;


 int H_SEND_LOGICAL_LAN ;
 int H_SUCCESS ;
 int IFCOUNTER_OERRORS ;
 int IFCOUNTER_OPACKETS ;
 int LLAN_BUFDESC_VALID ;
 int bzero (int*,int) ;
 int if_inc_counter (int ,int ,int) ;
 int phyp_hcall (int ,int ,int,int,int,int,int,int,int ) ;

__attribute__((used)) static void
llan_send_packet(void *xsc, bus_dma_segment_t *segs, int nsegs,
    bus_size_t mapsize, int error)
{
 struct llan_softc *sc = xsc;
 uint64_t bufdescs[6];
 int i, err;

 bzero(bufdescs, sizeof(bufdescs));

 for (i = 0; i < nsegs; i++) {
  bufdescs[i] = LLAN_BUFDESC_VALID;
  bufdescs[i] |= (((uint64_t)segs[i].ds_len) << 32);
  bufdescs[i] |= segs[i].ds_addr;
 }

 err = phyp_hcall(H_SEND_LOGICAL_LAN, sc->unit, bufdescs[0],
     bufdescs[1], bufdescs[2], bufdescs[3], bufdescs[4], bufdescs[5], 0);






 if (err == H_SUCCESS)
  if_inc_counter(sc->ifp, IFCOUNTER_OPACKETS, 1);
 else
  if_inc_counter(sc->ifp, IFCOUNTER_OERRORS, 1);
}
