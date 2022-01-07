
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct ooo_opaque {int ooo_isle; int ooo_opcode; int cid; } ;
struct ecore_ooo_buffer {int placement_offset; int rx_buffer_phys_addr; scalar_t__ rx_buffer_virt_addr; } ;
struct ecore_hwfn {scalar_t__ dp_level; int dp_module; } ;


 int DMA_HI (int ) ;
 int DMA_LO (int ) ;
 int DP_VERBOSE (struct ecore_hwfn*,int,char*,...) ;
 scalar_t__ ECORE_LEVEL_VERBOSE ;
 int ECORE_MSG_OOO ;

void ecore_ooo_dump_rx_event(struct ecore_hwfn *p_hwfn,
        struct ooo_opaque *iscsi_ooo,
        struct ecore_ooo_buffer *p_buffer)
{
 int i;
 u32 dp_module = ECORE_MSG_OOO;
 u32 ph_hi, ph_lo;
 u8 *packet_buffer = 0;

 if (p_hwfn->dp_level > ECORE_LEVEL_VERBOSE)
  return;
 if (!(p_hwfn->dp_module & dp_module))
  return;

 packet_buffer = (u8 *)p_buffer->rx_buffer_virt_addr +
  p_buffer->placement_offset;
 DP_VERBOSE(p_hwfn, dp_module,
     "******************************************************\n");
 ph_hi = DMA_HI(p_buffer->rx_buffer_phys_addr);
 ph_lo = DMA_LO(p_buffer->rx_buffer_phys_addr);
 DP_VERBOSE(p_hwfn, dp_module,
     "0x%x-%x: CID 0x%x, OP 0x%x, ISLE 0x%x\n",
     ph_hi, ph_lo,
     iscsi_ooo->cid, iscsi_ooo->ooo_opcode, iscsi_ooo->ooo_isle);
 for (i = 0; i < 64; i = i + 8) {
  DP_VERBOSE(p_hwfn, dp_module,
      "0x%x-%x:  0x%x 0x%x 0x%x 0x%x 0x%x 0x%x 0x%x 0x%x\n",
      ph_hi, ph_lo,
      packet_buffer[i],
      packet_buffer[i + 1],
      packet_buffer[i + 2],
      packet_buffer[i + 3],
      packet_buffer[i + 4],
      packet_buffer[i + 5],
      packet_buffer[i + 6],
      packet_buffer[i + 7]);
 }
}
