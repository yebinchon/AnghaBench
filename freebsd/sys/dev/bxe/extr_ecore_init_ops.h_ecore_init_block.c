
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_10__ {int mode_bit_map; scalar_t__ cmd_offset; } ;
struct TYPE_9__ {scalar_t__ data_len; int data_off; } ;
struct TYPE_8__ {int len; } ;
struct TYPE_7__ {int val; } ;
struct TYPE_6__ {scalar_t__ op; scalar_t__ offset; } ;
union init_op {TYPE_5__ if_mode; TYPE_4__ arr_wr; TYPE_3__ zero; TYPE_2__ write; TYPE_1__ raw; } ;
typedef scalar_t__ uint32_t ;
typedef scalar_t__ uint16_t ;
struct bxe_softc {int dummy; } ;


 size_t BLOCK_OPS_IDX (scalar_t__,scalar_t__,int ) ;
 scalar_t__* INIT_DATA (struct bxe_softc*) ;
 int INIT_MODE_FLAGS (struct bxe_softc*) ;
 int * INIT_OPS (struct bxe_softc*) ;
 scalar_t__* INIT_OPS_OFFSETS (struct bxe_softc*) ;
 int REG_RD (struct bxe_softc*,scalar_t__) ;
 int REG_WR (struct bxe_softc*,scalar_t__,int ) ;
 int STAGE_END ;
 int STAGE_START ;
 int ecore_init_fill (struct bxe_softc*,scalar_t__,int ,int ,int) ;
 int ecore_init_fw (struct bxe_softc*,scalar_t__,scalar_t__) ;
 int ecore_init_str_wr (struct bxe_softc*,scalar_t__,scalar_t__ const*,scalar_t__) ;
 int ecore_init_wr_64 (struct bxe_softc*,scalar_t__,scalar_t__ const*,scalar_t__) ;
 int ecore_init_wr_wb (struct bxe_softc*,scalar_t__,scalar_t__ const*,scalar_t__) ;
 int ecore_init_wr_zp (struct bxe_softc*,scalar_t__,scalar_t__,int) ;

__attribute__((used)) static void ecore_init_block(struct bxe_softc *sc, uint32_t block, uint32_t stage)
{
 uint16_t op_start =
  INIT_OPS_OFFSETS(sc)[BLOCK_OPS_IDX(block, stage,
           STAGE_START)];
 uint16_t op_end =
  INIT_OPS_OFFSETS(sc)[BLOCK_OPS_IDX(block, stage,
           STAGE_END)];
 const union init_op *op;
 uint32_t op_idx, op_type, addr, len;
 const uint32_t *data, *data_base;


 if (op_start == op_end)
  return;

 data_base = INIT_DATA(sc);

 for (op_idx = op_start; op_idx < op_end; op_idx++) {

  op = (const union init_op *)&(INIT_OPS(sc)[op_idx]);

  op_type = op->raw.op;
  addr = op->raw.offset;




  len = op->arr_wr.data_len;
  data = data_base + op->arr_wr.data_off;

  switch (op_type) {
  case 137:
   REG_RD(sc, addr);
   break;
  case 131:
   REG_WR(sc, addr, op->write.val);
   break;
  case 135:
   ecore_init_str_wr(sc, addr, data, len);
   break;
  case 133:
   ecore_init_wr_wb(sc, addr, data, len);
   break;

  case 141:
   ecore_init_fw(sc, addr, len);
   break;

  case 128:
   ecore_init_fill(sc, addr, 0, op->zero.len, 0);
   break;
  case 132:
   ecore_init_fill(sc, addr, 0, op->zero.len, 1);
   break;
  case 129:
   ecore_init_wr_zp(sc, addr, len,
      op->arr_wr.data_off);
   break;
  case 130:
   ecore_init_wr_64(sc, addr, data, len);
   break;
  case 140:



   if ((INIT_MODE_FLAGS(sc) &
    op->if_mode.mode_bit_map) !=
    op->if_mode.mode_bit_map)
    op_idx += op->if_mode.cmd_offset;
   break;
  case 139:



   if ((INIT_MODE_FLAGS(sc) &
    op->if_mode.mode_bit_map) == 0)
    op_idx += op->if_mode.cmd_offset;
   break;

  case 138:
  case 136:
  case 142:
  case 134:
  default:


   break;
  }
 }
}
