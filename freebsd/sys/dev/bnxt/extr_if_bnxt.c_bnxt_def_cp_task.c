
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t uint32_t ;
typedef int uint16_t ;
struct cmpl_base {int type; } ;
struct TYPE_3__ {scalar_t__ vaddr; } ;
struct bnxt_cp_ring {size_t cons; int v_bit; TYPE_1__ ring; } ;
struct bnxt_softc {int dev; struct bnxt_cp_ring def_cp_ring; } ;
typedef void* if_ctx_t ;


 int BNXT_CP_IDX_ENABLE_DB (TYPE_1__*,size_t) ;







 int CMPL_BASE_TYPE_MASK ;
 int CMP_VALID (struct cmpl_base*,int) ;
 int NEXT_CP_CONS_V (TYPE_1__*,size_t,int) ;
 int bnxt_handle_async_event (struct bnxt_softc*,struct cmpl_base*) ;
 int device_printf (int ,char*,int) ;
 struct bnxt_softc* iflib_get_softc (void*) ;
 int le16toh (int ) ;

__attribute__((used)) static void
bnxt_def_cp_task(void *context)
{
 if_ctx_t ctx = context;
 struct bnxt_softc *softc = iflib_get_softc(ctx);
 struct bnxt_cp_ring *cpr = &softc->def_cp_ring;


 struct cmpl_base *cmpl;
 uint32_t cons = cpr->cons;
 bool v_bit = cpr->v_bit;
 bool last_v_bit;
 uint32_t last_cons;
 uint16_t type;

 for (;;) {
  last_cons = cons;
  last_v_bit = v_bit;
  NEXT_CP_CONS_V(&cpr->ring, cons, v_bit);
  cmpl = &((struct cmpl_base *)cpr->ring.vaddr)[cons];

  if (!CMP_VALID(cmpl, v_bit))
   break;

  type = le16toh(cmpl->type) & CMPL_BASE_TYPE_MASK;
  switch (type) {
  case 139:
   bnxt_handle_async_event(softc, cmpl);
   break;
  case 128:
  case 133:
  case 134:
  case 131:
  case 132:
  case 129:
  case 138:
  case 137:
  case 136:
  case 142:
  case 130:
  case 141:
  case 135:
  case 140:
   device_printf(softc->dev,
       "Unhandled completion type %u\n", type);
   break;
  default:
   device_printf(softc->dev,
       "Unknown completion type %u\n", type);
   break;
  }
 }

 cpr->cons = last_cons;
 cpr->v_bit = last_v_bit;
 BNXT_CP_IDX_ENABLE_DB(&cpr->ring, cpr->cons);
}
