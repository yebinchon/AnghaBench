
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef size_t vm_paddr_t ;
typedef size_t u_int ;
struct sglist {size_t sg_nseg; TYPE_4__* sg_segs; } ;
struct phys_sge_pairs {void** len; int * addr; } ;
struct TYPE_7__ {scalar_t__ hash_val; void* qid; int opcode; } ;
struct cpl_rx_phys_dsgl {TYPE_3__ rss_hdr_int; void* pcirlxorder_to_noofsgentr; void* op_to_tid; } ;
struct ccr_softc {TYPE_2__* rxq; struct sglist* sg_dsgl; } ;
struct TYPE_8__ {size_t ss_len; size_t ss_paddr; } ;
struct TYPE_5__ {size_t abs_id; } ;
struct TYPE_6__ {TYPE_1__ iq; } ;


 int CPL_RX_PHYS_ADDR ;
 int CPL_RX_PHYS_DSGL ;
 size_t DSGL_SGE_MAXLEN ;
 int MPASS (int) ;
 int V_CPL_RX_PHYS_DSGL_DCAID (int ) ;
 int V_CPL_RX_PHYS_DSGL_ISRDMA (int ) ;
 int V_CPL_RX_PHYS_DSGL_NOOFSGENTR (int) ;
 int V_CPL_RX_PHYS_DSGL_OPCODE (int ) ;
 int V_CPL_RX_PHYS_DSGL_PCINOSNOOP (int ) ;
 int V_CPL_RX_PHYS_DSGL_PCIRLXORDER (int ) ;
 int V_CPL_RX_PHYS_DSGL_PCITPHNTENB (int ) ;
 void* htobe16 (size_t) ;
 void* htobe32 (int) ;
 int htobe64 (size_t) ;

__attribute__((used)) static void
ccr_write_phys_dsgl(struct ccr_softc *sc, void *dst, int nsegs)
{
 struct sglist *sg;
 struct cpl_rx_phys_dsgl *cpl;
 struct phys_sge_pairs *sgl;
 vm_paddr_t paddr;
 size_t seglen;
 u_int i, j;

 sg = sc->sg_dsgl;
 cpl = dst;
 cpl->op_to_tid = htobe32(V_CPL_RX_PHYS_DSGL_OPCODE(CPL_RX_PHYS_DSGL) |
     V_CPL_RX_PHYS_DSGL_ISRDMA(0));
 cpl->pcirlxorder_to_noofsgentr = htobe32(
     V_CPL_RX_PHYS_DSGL_PCIRLXORDER(0) |
     V_CPL_RX_PHYS_DSGL_PCINOSNOOP(0) |
     V_CPL_RX_PHYS_DSGL_PCITPHNTENB(0) | V_CPL_RX_PHYS_DSGL_DCAID(0) |
     V_CPL_RX_PHYS_DSGL_NOOFSGENTR(nsegs));
 cpl->rss_hdr_int.opcode = CPL_RX_PHYS_ADDR;
 cpl->rss_hdr_int.qid = htobe16(sc->rxq->iq.abs_id);
 cpl->rss_hdr_int.hash_val = 0;
 sgl = (struct phys_sge_pairs *)(cpl + 1);
 j = 0;
 for (i = 0; i < sg->sg_nseg; i++) {
  seglen = sg->sg_segs[i].ss_len;
  paddr = sg->sg_segs[i].ss_paddr;
  do {
   sgl->addr[j] = htobe64(paddr);
   if (seglen > DSGL_SGE_MAXLEN) {
    sgl->len[j] = htobe16(DSGL_SGE_MAXLEN);
    paddr += DSGL_SGE_MAXLEN;
    seglen -= DSGL_SGE_MAXLEN;
   } else {
    sgl->len[j] = htobe16(seglen);
    seglen = 0;
   }
   j++;
   if (j == 8) {
    sgl++;
    j = 0;
   }
  } while (seglen != 0);
 }
 MPASS(j + 8 * (sgl - (struct phys_sge_pairs *)(cpl + 1)) == nsegs);
}
