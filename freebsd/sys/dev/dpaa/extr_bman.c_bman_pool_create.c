
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef size_t uint8_t ;
typedef int uint32_t ;
typedef void* uint16_t ;
typedef int t_VirtToPhys ;
typedef int t_PutBufFunction ;
typedef int t_PhysToVirt ;
typedef int * t_Handle ;
typedef int t_GetBufFunction ;
struct TYPE_5__ {void* bufferSize; int * f_VirtToPhys; int * f_PhysToVirt; int * f_PutBuf; int * f_GetBuf; int * h_BufferPool; } ;
struct TYPE_6__ {TYPE_1__ bufferPoolInfo; void* numOfBuffers; int * h_App; int * h_BmPortal; int h_Bm; } ;
typedef TYPE_2__ t_BmPoolParam ;
typedef int t_BmDepletionCallback ;
struct bman_softc {int * sc_bpool_cpu; int sc_bh; } ;
typedef int bpp ;


 int * BM_POOL_Config (TYPE_2__*) ;
 int BM_POOL_ConfigBuffContextMode (int *,int ) ;
 int BM_POOL_ConfigDepletion (int *,int *,int *) ;
 int BM_POOL_ConfigStockpile (int *,void*,void*) ;
 size_t BM_POOL_DEP_THRESH_HW_ENTRY ;
 size_t BM_POOL_DEP_THRESH_HW_EXIT ;
 size_t BM_POOL_DEP_THRESH_SW_ENTRY ;
 size_t BM_POOL_DEP_THRESH_SW_EXIT ;
 int BM_POOL_Free (int *) ;
 size_t BM_POOL_GetId (int *) ;
 int BM_POOL_Init (int *) ;
 int E_OK ;
 int MAX_DEPLETION_THRESHOLDS ;
 int PCPU_GET (int ) ;
 int * bman_portal_setup (struct bman_softc*) ;
 struct bman_softc* bman_sc ;
 int cpuid ;
 int memset (TYPE_2__*,int ,int) ;
 int sched_pin () ;
 int sched_unpin () ;

t_Handle
bman_pool_create(uint8_t *bpid, uint16_t bufferSize, uint16_t maxBuffers,
    uint16_t minBuffers, uint16_t allocBuffers, t_GetBufFunction *f_GetBuf,
    t_PutBufFunction *f_PutBuf, uint32_t dep_sw_entry, uint32_t dep_sw_exit,
    uint32_t dep_hw_entry, uint32_t dep_hw_exit,
    t_BmDepletionCallback *f_Depletion, t_Handle h_BufferPool,
    t_PhysToVirt *f_PhysToVirt, t_VirtToPhys *f_VirtToPhys)
{
 uint32_t thresholds[MAX_DEPLETION_THRESHOLDS];
 struct bman_softc *sc;
 t_Handle pool, portal;
 t_BmPoolParam bpp;
 int error;

 sc = bman_sc;
 pool = ((void*)0);

 sched_pin();

 portal = bman_portal_setup(sc);
 if (portal == ((void*)0))
  goto err;

 memset(&bpp, 0, sizeof(bpp));
 bpp.h_Bm = sc->sc_bh;
 bpp.h_BmPortal = portal;
 bpp.h_App = h_BufferPool;
 bpp.numOfBuffers = allocBuffers;

 bpp.bufferPoolInfo.h_BufferPool = h_BufferPool;
 bpp.bufferPoolInfo.f_GetBuf = f_GetBuf;
 bpp.bufferPoolInfo.f_PutBuf = f_PutBuf;
 bpp.bufferPoolInfo.f_PhysToVirt = f_PhysToVirt;
 bpp.bufferPoolInfo.f_VirtToPhys = f_VirtToPhys;
 bpp.bufferPoolInfo.bufferSize = bufferSize;

 pool = BM_POOL_Config(&bpp);
 if (pool == ((void*)0))
  goto err;





 BM_POOL_ConfigBuffContextMode(pool, 0);

 if (minBuffers != 0 || maxBuffers != 0) {
  error = BM_POOL_ConfigStockpile(pool, maxBuffers, minBuffers);
  if (error != E_OK)
   goto err;
 }

 if (f_Depletion != ((void*)0)) {
  thresholds[BM_POOL_DEP_THRESH_SW_ENTRY] = dep_sw_entry;
  thresholds[BM_POOL_DEP_THRESH_SW_EXIT] = dep_sw_exit;
  thresholds[BM_POOL_DEP_THRESH_HW_ENTRY] = dep_hw_entry;
  thresholds[BM_POOL_DEP_THRESH_HW_EXIT] = dep_hw_exit;
  error = BM_POOL_ConfigDepletion(pool, f_Depletion, thresholds);
  if (error != E_OK)
   goto err;
 }

 error = BM_POOL_Init(pool);
 if (error != E_OK)
  goto err;

 *bpid = BM_POOL_GetId(pool);
 sc->sc_bpool_cpu[*bpid] = PCPU_GET(cpuid);

 sched_unpin();

 return (pool);

err:
 if (pool != ((void*)0))
  BM_POOL_Free(pool);

 sched_unpin();

 return (((void*)0));
}
