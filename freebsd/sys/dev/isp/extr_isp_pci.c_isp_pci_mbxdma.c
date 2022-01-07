
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_25__ TYPE_4__ ;
typedef struct TYPE_24__ TYPE_3__ ;
typedef struct TYPE_23__ TYPE_2__ ;
typedef struct TYPE_22__ TYPE_1__ ;
typedef struct TYPE_21__ TYPE_19__ ;


typedef int uintmax_t ;
typedef size_t uint32_t ;
struct isp_pcmd {struct isp_pcmd* next; int wdog; int dmap; } ;
struct isp_nexus {struct isp_nexus* next; } ;
struct isp_fc {struct isp_nexus* nexus_free_list; int scmap; } ;
struct imush {int error; scalar_t__ maddr; } ;
struct TYPE_22__ {struct isp_pcmd* pcmd_pool; struct isp_pcmd* pcmd_free; int dmat; int scdmat; int iocbmap; int iocbdmat; int atiomap; int atiodmat; int respmap; int respdmat; TYPE_4__* ecmd_free; TYPE_4__* ecmd_base; scalar_t__ ecmd_dma; int reqmap; int reqdmat; } ;
struct TYPE_23__ {int isp_maxcmds; scalar_t__ isp_type; int isp_nchan; TYPE_3__* isp_xflist; TYPE_3__* isp_xffree; TYPE_1__ isp_osinfo; int isp_lock; scalar_t__ isp_iocb_dma; void* isp_iocb; scalar_t__ isp_atioq_dma; void* isp_atioq; scalar_t__ isp_result_dma; void* isp_result; scalar_t__ isp_rquest_dma; int * isp_rquest; } ;
typedef TYPE_2__ ispsoftc_t ;
struct TYPE_24__ {struct TYPE_24__* cmd; } ;
typedef TYPE_3__ isp_hdl_t ;
struct TYPE_25__ {struct TYPE_25__* next; } ;
typedef TYPE_4__ isp_ecmd_t ;
typedef void* caddr_t ;
typedef int bus_size_t ;
typedef int bus_addr_t ;
struct TYPE_21__ {scalar_t__ isp_scdma; int * isp_scratch; } ;


 int BUS_DMA_COHERENT ;
 int BUS_SPACE_MAXADDR ;
 int BUS_SPACE_MAXADDR_32BIT ;
 int BUS_SPACE_MAXSIZE ;
 TYPE_19__* FCPARAM (TYPE_2__*,int) ;
 int INITIAL_NEXUS_COUNT ;
 struct isp_fc* ISP_FC_PC (TYPE_2__*,int) ;
 int ISP_FC_SCRLEN ;
 scalar_t__ ISP_HA_FC_2200 ;
 int ISP_LOCK (TYPE_2__*) ;
 int ISP_LOGDEBUG0 ;
 int ISP_LOGERR ;
 size_t ISP_NSEG64_MAX ;
 size_t ISP_NSEG_MAX ;
 int ISP_PCD (TYPE_2__*) ;
 size_t ISP_QUEUE_SIZE (int ) ;
 int ISP_UNLOCK (TYPE_2__*) ;
 scalar_t__ IS_1240 (TYPE_2__*) ;
 int IS_2100 (TYPE_2__*) ;
 scalar_t__ IS_24XX (TYPE_2__*) ;
 scalar_t__ IS_FC (TYPE_2__*) ;
 scalar_t__ IS_ULTRA2 (TYPE_2__*) ;
 int M_DEVBUF ;
 int M_NOWAIT ;
 int M_WAITOK ;
 int M_ZERO ;
 size_t N_XCMDS ;
 int QENTRY_LEN ;
 int RESULT_QUEUE_LEN (TYPE_2__*) ;
 int RQUEST_QUEUE_LEN (TYPE_2__*) ;
 size_t XCMD_SIZE ;
 scalar_t__ bus_dma_tag_create (int ,int,int,int ,int ,int *,int *,int,int,int,int ,int ,int *,int *) ;
 int bus_dma_tag_destroy (int ) ;
 int bus_dmamap_create (int ,int ,int *) ;
 int bus_dmamap_destroy (int ,int ) ;
 scalar_t__ bus_dmamap_load (int ,int ,void*,int,int ,struct imush*,int ) ;
 scalar_t__ bus_dmamem_alloc (int ,void**,int ,int *) ;
 int bus_dmamem_free (int ,void*,int ) ;
 int bus_get_dma_tag (int ) ;
 int busdma_lock_mutex ;
 int callout_init_mtx (int *,int *,int ) ;
 int free (struct isp_nexus*,int ) ;
 int imc ;
 int isp_pci_mbxdmafree (TYPE_2__*) ;
 int isp_prt (TYPE_2__*,int ,char*,...) ;
 struct isp_nexus* malloc (size_t,int ,int) ;

__attribute__((used)) static int
isp_pci_mbxdma(ispsoftc_t *isp)
{
 caddr_t base;
 uint32_t len, nsegs;
 int i, error, cmap = 0;
 bus_size_t slim;
 bus_addr_t llim;
 bus_addr_t hlim;
 struct imush im;
 isp_ecmd_t *ecmd;


 if (isp->isp_xflist != ((void*)0))
  return (0);
 if (isp->isp_rquest != ((void*)0) && isp->isp_maxcmds == 0)
  return (0);
 ISP_UNLOCK(isp);
 if (isp->isp_rquest != ((void*)0))
  goto gotmaxcmds;

 hlim = BUS_SPACE_MAXADDR;
 if (IS_ULTRA2(isp) || IS_FC(isp) || IS_1240(isp)) {
  if (sizeof (bus_size_t) > 4)
   slim = (bus_size_t) (1ULL << 32);
  else
   slim = (bus_size_t) (1UL << 31);
  llim = BUS_SPACE_MAXADDR;
 } else {
  slim = (1UL << 24);
  llim = BUS_SPACE_MAXADDR_32BIT;
 }
 if (sizeof (bus_size_t) > 4)
  nsegs = ISP_NSEG64_MAX;
 else
  nsegs = ISP_NSEG_MAX;

 if (bus_dma_tag_create(bus_get_dma_tag(ISP_PCD(isp)), 1,
     slim, llim, hlim, ((void*)0), ((void*)0), BUS_SPACE_MAXSIZE, nsegs, slim, 0,
     busdma_lock_mutex, &isp->isp_lock, &isp->isp_osinfo.dmat)) {
  ISP_LOCK(isp);
  isp_prt(isp, ISP_LOGERR, "could not create master dma tag");
  return (1);
 }





 len = ISP_QUEUE_SIZE(RQUEST_QUEUE_LEN(isp));
 if (isp->isp_type >= ISP_HA_FC_2200)
  len += (N_XCMDS * XCMD_SIZE);
 if (bus_dma_tag_create(isp->isp_osinfo.dmat, QENTRY_LEN, slim,
     BUS_SPACE_MAXADDR_32BIT, BUS_SPACE_MAXADDR, ((void*)0), ((void*)0),
     len, 1, len, 0, busdma_lock_mutex, &isp->isp_lock,
     &isp->isp_osinfo.reqdmat)) {
  isp_prt(isp, ISP_LOGERR, "cannot create request DMA tag");
  goto bad;
 }
 if (bus_dmamem_alloc(isp->isp_osinfo.reqdmat, (void **)&base,
     BUS_DMA_COHERENT, &isp->isp_osinfo.reqmap) != 0) {
  isp_prt(isp, ISP_LOGERR, "cannot allocate request DMA memory");
  bus_dma_tag_destroy(isp->isp_osinfo.reqdmat);
  goto bad;
 }
 isp->isp_rquest = base;
 im.error = 0;
 if (bus_dmamap_load(isp->isp_osinfo.reqdmat, isp->isp_osinfo.reqmap,
     base, len, imc, &im, 0) || im.error) {
  isp_prt(isp, ISP_LOGERR, "error loading request DMA map %d", im.error);
  goto bad;
 }
 isp_prt(isp, ISP_LOGDEBUG0, "request area @ 0x%jx/0x%jx",
     (uintmax_t)im.maddr, (uintmax_t)len);
 isp->isp_rquest_dma = im.maddr;
 base += ISP_QUEUE_SIZE(RQUEST_QUEUE_LEN(isp));
 im.maddr += ISP_QUEUE_SIZE(RQUEST_QUEUE_LEN(isp));
 if (isp->isp_type >= ISP_HA_FC_2200) {
  isp->isp_osinfo.ecmd_dma = im.maddr;
  isp->isp_osinfo.ecmd_free = (isp_ecmd_t *)base;
  isp->isp_osinfo.ecmd_base = isp->isp_osinfo.ecmd_free;
  for (ecmd = isp->isp_osinfo.ecmd_free;
      ecmd < &isp->isp_osinfo.ecmd_free[N_XCMDS]; ecmd++) {
   if (ecmd == &isp->isp_osinfo.ecmd_free[N_XCMDS - 1])
    ecmd->next = ((void*)0);
   else
    ecmd->next = ecmd + 1;
  }
 }




 len = ISP_QUEUE_SIZE(RESULT_QUEUE_LEN(isp));
 if (bus_dma_tag_create(isp->isp_osinfo.dmat, QENTRY_LEN, slim,
     BUS_SPACE_MAXADDR_32BIT, BUS_SPACE_MAXADDR, ((void*)0), ((void*)0),
     len, 1, len, 0, busdma_lock_mutex, &isp->isp_lock,
     &isp->isp_osinfo.respdmat)) {
  isp_prt(isp, ISP_LOGERR, "cannot create response DMA tag");
  goto bad;
 }
 if (bus_dmamem_alloc(isp->isp_osinfo.respdmat, (void **)&base,
     BUS_DMA_COHERENT, &isp->isp_osinfo.respmap) != 0) {
  isp_prt(isp, ISP_LOGERR, "cannot allocate response DMA memory");
  bus_dma_tag_destroy(isp->isp_osinfo.respdmat);
  goto bad;
 }
 isp->isp_result = base;
 im.error = 0;
 if (bus_dmamap_load(isp->isp_osinfo.respdmat, isp->isp_osinfo.respmap,
     base, len, imc, &im, 0) || im.error) {
  isp_prt(isp, ISP_LOGERR, "error loading response DMA map %d", im.error);
  goto bad;
 }
 isp_prt(isp, ISP_LOGDEBUG0, "response area @ 0x%jx/0x%jx",
     (uintmax_t)im.maddr, (uintmax_t)len);
 isp->isp_result_dma = im.maddr;
 if (IS_FC(isp)) {
  if (bus_dma_tag_create(isp->isp_osinfo.dmat, 64, slim,
      BUS_SPACE_MAXADDR, BUS_SPACE_MAXADDR, ((void*)0), ((void*)0),
      2*QENTRY_LEN, 1, 2*QENTRY_LEN, 0, busdma_lock_mutex,
      &isp->isp_lock, &isp->isp_osinfo.iocbdmat)) {
   goto bad;
  }
  if (bus_dmamem_alloc(isp->isp_osinfo.iocbdmat,
      (void **)&base, BUS_DMA_COHERENT, &isp->isp_osinfo.iocbmap) != 0)
   goto bad;
  isp->isp_iocb = base;
  im.error = 0;
  if (bus_dmamap_load(isp->isp_osinfo.iocbdmat, isp->isp_osinfo.iocbmap,
      base, 2*QENTRY_LEN, imc, &im, 0) || im.error)
   goto bad;
  isp->isp_iocb_dma = im.maddr;

  if (bus_dma_tag_create(isp->isp_osinfo.dmat, 64, slim,
      BUS_SPACE_MAXADDR, BUS_SPACE_MAXADDR, ((void*)0), ((void*)0),
      ISP_FC_SCRLEN, 1, ISP_FC_SCRLEN, 0, busdma_lock_mutex,
      &isp->isp_lock, &isp->isp_osinfo.scdmat))
   goto bad;
  for (cmap = 0; cmap < isp->isp_nchan; cmap++) {
   struct isp_fc *fc = ISP_FC_PC(isp, cmap);
   if (bus_dmamem_alloc(isp->isp_osinfo.scdmat,
       (void **)&base, BUS_DMA_COHERENT, &fc->scmap) != 0)
    goto bad;
   FCPARAM(isp, cmap)->isp_scratch = base;
   im.error = 0;
   if (bus_dmamap_load(isp->isp_osinfo.scdmat, fc->scmap,
       base, ISP_FC_SCRLEN, imc, &im, 0) || im.error) {
    bus_dmamem_free(isp->isp_osinfo.scdmat,
        base, fc->scmap);
    FCPARAM(isp, cmap)->isp_scratch = ((void*)0);
    goto bad;
   }
   FCPARAM(isp, cmap)->isp_scdma = im.maddr;
   if (!IS_2100(isp)) {
    for (i = 0; i < INITIAL_NEXUS_COUNT; i++) {
     struct isp_nexus *n = malloc(sizeof (struct isp_nexus), M_DEVBUF, M_NOWAIT | M_ZERO);
     if (n == ((void*)0)) {
      while (fc->nexus_free_list) {
       n = fc->nexus_free_list;
       fc->nexus_free_list = n->next;
       free(n, M_DEVBUF);
      }
      goto bad;
     }
     n->next = fc->nexus_free_list;
     fc->nexus_free_list = n;
    }
   }
  }
 }

 if (isp->isp_maxcmds == 0) {
  ISP_LOCK(isp);
  return (0);
 }

gotmaxcmds:
 len = isp->isp_maxcmds * sizeof (struct isp_pcmd);
 isp->isp_osinfo.pcmd_pool = (struct isp_pcmd *)
     malloc(len, M_DEVBUF, M_WAITOK | M_ZERO);
 for (i = 0; i < isp->isp_maxcmds; i++) {
  struct isp_pcmd *pcmd = &isp->isp_osinfo.pcmd_pool[i];
  error = bus_dmamap_create(isp->isp_osinfo.dmat, 0, &pcmd->dmap);
  if (error) {
   isp_prt(isp, ISP_LOGERR, "error %d creating per-cmd DMA maps", error);
   while (--i >= 0) {
    bus_dmamap_destroy(isp->isp_osinfo.dmat,
        isp->isp_osinfo.pcmd_pool[i].dmap);
   }
   goto bad;
  }
  callout_init_mtx(&pcmd->wdog, &isp->isp_lock, 0);
  if (i == isp->isp_maxcmds-1)
   pcmd->next = ((void*)0);
  else
   pcmd->next = &isp->isp_osinfo.pcmd_pool[i+1];
 }
 isp->isp_osinfo.pcmd_free = &isp->isp_osinfo.pcmd_pool[0];

 len = sizeof (isp_hdl_t) * isp->isp_maxcmds;
 isp->isp_xflist = (isp_hdl_t *) malloc(len, M_DEVBUF, M_WAITOK | M_ZERO);
 for (len = 0; len < isp->isp_maxcmds - 1; len++)
  isp->isp_xflist[len].cmd = &isp->isp_xflist[len+1];
 isp->isp_xffree = isp->isp_xflist;

 ISP_LOCK(isp);
 return (0);

bad:
 isp_pci_mbxdmafree(isp);
 ISP_LOCK(isp);
 return (1);
}
