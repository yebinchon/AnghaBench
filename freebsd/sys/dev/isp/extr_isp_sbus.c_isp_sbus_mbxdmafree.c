
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int reqdmat; int reqmap; int respdmat; int respmap; TYPE_4__* pcmd_pool; int dmat; } ;
struct TYPE_6__ {int isp_maxcmds; scalar_t__ isp_result_dma; scalar_t__ isp_rquest_dma; int * isp_rquest; TYPE_1__ isp_osinfo; int * isp_result; TYPE_4__* isp_xflist; } ;
typedef TYPE_2__ ispsoftc_t ;
struct TYPE_7__ {int dmap; } ;


 int M_DEVBUF ;
 int bus_dma_tag_destroy (int ) ;
 int bus_dmamap_destroy (int ,int ) ;
 int bus_dmamap_unload (int ,int ) ;
 int bus_dmamem_free (int ,int *,int ) ;
 int free (TYPE_4__*,int ) ;

__attribute__((used)) static void
isp_sbus_mbxdmafree(ispsoftc_t *isp)
{
 int i;

 if (isp->isp_xflist != ((void*)0)) {
  free(isp->isp_xflist, M_DEVBUF);
  isp->isp_xflist = ((void*)0);
 }
 if (isp->isp_osinfo.pcmd_pool != ((void*)0)) {
  for (i = 0; i < isp->isp_maxcmds; i++) {
   bus_dmamap_destroy(isp->isp_osinfo.dmat,
       isp->isp_osinfo.pcmd_pool[i].dmap);
  }
  free(isp->isp_osinfo.pcmd_pool, M_DEVBUF);
  isp->isp_osinfo.pcmd_pool = ((void*)0);
 }
 if (isp->isp_result_dma != 0) {
  bus_dmamap_unload(isp->isp_osinfo.respdmat,
      isp->isp_osinfo.respmap);
  isp->isp_result_dma = 0;
 }
 if (isp->isp_result != ((void*)0)) {
  bus_dmamem_free(isp->isp_osinfo.respdmat, isp->isp_result,
      isp->isp_osinfo.respmap);
  bus_dma_tag_destroy(isp->isp_osinfo.respdmat);
  isp->isp_result = ((void*)0);
 }
 if (isp->isp_rquest_dma != 0) {
  bus_dmamap_unload(isp->isp_osinfo.reqdmat,
      isp->isp_osinfo.reqmap);
  isp->isp_rquest_dma = 0;
 }
 if (isp->isp_rquest != ((void*)0)) {
  bus_dmamem_free(isp->isp_osinfo.reqdmat, isp->isp_rquest,
      isp->isp_osinfo.reqmap);
  bus_dma_tag_destroy(isp->isp_osinfo.reqdmat);
  isp->isp_rquest = ((void*)0);
 }
}
