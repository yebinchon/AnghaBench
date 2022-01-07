
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_6__ {int flags; } ;
struct ccb_scsiio {TYPE_1__ ccb_h; } ;
struct TYPE_7__ {int dmat; } ;
struct TYPE_8__ {TYPE_2__ isp_osinfo; } ;
typedef TYPE_3__ ispsoftc_t ;
struct TYPE_9__ {int dmap; } ;


 int BUS_DMASYNC_POSTREAD ;
 int BUS_DMASYNC_POSTWRITE ;
 int CAM_DIR_IN ;
 int CAM_DIR_MASK ;
 TYPE_5__* PISP_PCMD (struct ccb_scsiio*) ;
 int bus_dmamap_sync (int ,int ,int ) ;
 int bus_dmamap_unload (int ,int ) ;

void
isp_common_dmateardown(ispsoftc_t *isp, struct ccb_scsiio *csio, uint32_t hdl)
{
 if ((csio->ccb_h.flags & CAM_DIR_MASK) == CAM_DIR_IN) {
  bus_dmamap_sync(isp->isp_osinfo.dmat, PISP_PCMD(csio)->dmap, BUS_DMASYNC_POSTREAD);
 } else {
  bus_dmamap_sync(isp->isp_osinfo.dmat, PISP_PCMD(csio)->dmap, BUS_DMASYNC_POSTWRITE);
 }
 bus_dmamap_unload(isp->isp_osinfo.dmat, PISP_PCMD(csio)->dmap);
}
