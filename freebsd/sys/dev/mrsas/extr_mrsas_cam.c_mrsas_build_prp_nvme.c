
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u_int8_t ;
typedef size_t u_int64_t ;
typedef size_t u_int32_t ;
struct mrsas_softc {int prp_count; int mrsas_dev; int max_chain_frame_sz; int nvme_page_size; } ;
struct mrsas_mpt_cmd {int length; size_t chain_frame_phys_addr; scalar_t__ chain_frame; TYPE_1__* io_request; struct mrsas_softc* sc; } ;
typedef TYPE_2__* pMpi25IeeeSgeChain64_t ;
struct TYPE_7__ {size_t ds_addr; int ds_len; } ;
typedef TYPE_3__ bus_dma_segment_t ;
typedef size_t bus_addr_t ;
struct TYPE_6__ {size_t Address; int Flags; size_t Length; scalar_t__ NextChainOffset; } ;
struct TYPE_5__ {int SGL; } ;
typedef int MPI25_IEEE_SGE_CHAIN64 ;


 int IEEE_SGE_FLAGS_CHAIN_ELEMENT ;
 int IEEE_SGE_FLAGS_SYSTEM_ADDR ;
 int MPI26_IEEE_SGE_FLAGS_NSF_NVME_PRP ;
 int MR_DEFAULT_NVME_PAGE_SIZE ;
 int device_printf (int ,char*,size_t*) ;
 size_t max (int ,int ) ;
 int memset (size_t*,int ,int ) ;
 int mrsas_atomic_inc (int *) ;

__attribute__((used)) static void mrsas_build_prp_nvme(struct mrsas_mpt_cmd *cmd, bus_dma_segment_t *segs, int nseg)
{
 struct mrsas_softc *sc = cmd->sc;
 int sge_len, offset, num_prp_in_chain = 0;
 pMpi25IeeeSgeChain64_t main_chain_element, ptr_first_sgl, sgl_ptr;
 u_int64_t *ptr_sgl;
 bus_addr_t ptr_sgl_phys;
 u_int64_t sge_addr;
 u_int32_t page_mask, page_mask_result, i = 0;
 u_int32_t first_prp_len;
 int data_len = cmd->length;
 u_int32_t mr_nvme_pg_size = max(sc->nvme_page_size,
     MR_DEFAULT_NVME_PAGE_SIZE);

 sgl_ptr = (pMpi25IeeeSgeChain64_t) &cmd->io_request->SGL;
 page_mask = mr_nvme_pg_size - 1;
 ptr_sgl = (u_int64_t *) cmd->chain_frame;
 ptr_sgl_phys = cmd->chain_frame_phys_addr;
 memset(ptr_sgl, 0, sc->max_chain_frame_sz);


 main_chain_element = (pMpi25IeeeSgeChain64_t)
     ((u_int8_t *)sgl_ptr + sizeof(MPI25_IEEE_SGE_CHAIN64));


 main_chain_element->Address = cmd->chain_frame_phys_addr;
 main_chain_element->NextChainOffset = 0;
 main_chain_element->Flags = IEEE_SGE_FLAGS_CHAIN_ELEMENT |
     IEEE_SGE_FLAGS_SYSTEM_ADDR |
     MPI26_IEEE_SGE_FLAGS_NSF_NVME_PRP;



 ptr_first_sgl = sgl_ptr;
 sge_addr = segs[i].ds_addr;
 sge_len = segs[i].ds_len;
 i++;

 offset = (u_int32_t) (sge_addr & page_mask);
 first_prp_len = mr_nvme_pg_size - offset;

 ptr_first_sgl->Address = sge_addr;
 ptr_first_sgl->Length = first_prp_len;

 data_len -= first_prp_len;

 if (sge_len > first_prp_len) {
  sge_addr += first_prp_len;
  sge_len -= first_prp_len;
 } else if (sge_len == first_prp_len) {
  sge_addr = segs[i].ds_addr;
  sge_len = segs[i].ds_len;
  i++;
 }

 for (;;) {

  offset = (u_int32_t) (sge_addr & page_mask);


  page_mask_result = (uintptr_t)(ptr_sgl + 1) & page_mask;
  if (!page_mask_result) {
   device_printf(sc->mrsas_dev, "BRCM: Put prp pointer as we are at page boundary"
     " ptr_sgl: 0x%p\n", ptr_sgl);
   ptr_sgl_phys++;
   *ptr_sgl = (uintptr_t)ptr_sgl_phys;
   ptr_sgl++;
   num_prp_in_chain++;
  }

  *ptr_sgl = sge_addr;
  ptr_sgl++;
  ptr_sgl_phys++;
  num_prp_in_chain++;


  sge_addr += mr_nvme_pg_size;
  sge_len -= mr_nvme_pg_size;
  data_len -= mr_nvme_pg_size;

  if (data_len <= 0)
   break;

  if (sge_len > 0)
   continue;

  sge_addr = segs[i].ds_addr;
  sge_len = segs[i].ds_len;
  i++;
 }

 main_chain_element->Length = num_prp_in_chain * sizeof(u_int64_t);
 mrsas_atomic_inc(&sc->prp_count);

}
