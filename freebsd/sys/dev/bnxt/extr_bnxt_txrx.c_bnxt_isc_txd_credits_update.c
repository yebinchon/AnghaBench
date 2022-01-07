
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t uint32_t ;
typedef size_t uint16_t ;
struct tx_cmpl {size_t flags_type; int opaque; int errors_v; } ;
struct bnxt_softc {int dev; struct bnxt_cp_ring* tx_cp_rings; } ;
struct TYPE_3__ {scalar_t__ vaddr; } ;
struct bnxt_cp_ring {size_t cons; int v_bit; TYPE_1__ ring; } ;


 int BNXT_CP_IDX_DISABLE_DB (TYPE_1__*,size_t) ;
 int CMPL_PREFETCH_NEXT (struct bnxt_cp_ring*,size_t) ;
 int CMP_VALID (struct tx_cmpl*,int) ;
 int NEXT_CP_CONS_V (TYPE_1__*,size_t,int) ;
 size_t TX_CMPL_ERRORS_BUFFER_ERROR_MASK ;
 size_t TX_CMPL_ERRORS_BUFFER_ERROR_SFT ;
 size_t TX_CMPL_TYPE_MASK ;

 int device_printf (int ,char*,size_t) ;
 size_t le16toh (int ) ;

__attribute__((used)) static int
bnxt_isc_txd_credits_update(void *sc, uint16_t txqid, bool clear)
{
 struct bnxt_softc *softc = (struct bnxt_softc *)sc;
 struct bnxt_cp_ring *cpr = &softc->tx_cp_rings[txqid];
 struct tx_cmpl *cmpl = (struct tx_cmpl *)cpr->ring.vaddr;
 int avail = 0;
 uint32_t cons = cpr->cons;
 bool v_bit = cpr->v_bit;
 bool last_v_bit;
 uint32_t last_cons;
 uint16_t type;
 uint16_t err;

 for (;;) {
  last_cons = cons;
  last_v_bit = v_bit;
  NEXT_CP_CONS_V(&cpr->ring, cons, v_bit);
  CMPL_PREFETCH_NEXT(cpr, cons);

  if (!CMP_VALID(&cmpl[cons], v_bit))
   goto done;

  type = cmpl[cons].flags_type & TX_CMPL_TYPE_MASK;
  switch (type) {
  case 128:
   err = (le16toh(cmpl[cons].errors_v) &
       TX_CMPL_ERRORS_BUFFER_ERROR_MASK) >>
       TX_CMPL_ERRORS_BUFFER_ERROR_SFT;
   if (err)
    device_printf(softc->dev,
        "TX completion error %u\n", err);

   avail += cmpl[cons].opaque >> 24;





   if (!clear)
    goto done;
   break;
  default:
   if (type & 1) {
    NEXT_CP_CONS_V(&cpr->ring, cons, v_bit);
    if (!CMP_VALID(&cmpl[cons], v_bit))
     goto done;
   }
   device_printf(softc->dev,
       "Unhandled TX completion type %u\n", type);
   break;
  }
 }
done:

 if (clear && avail) {
  cpr->cons = last_cons;
  cpr->v_bit = last_v_bit;
  BNXT_CP_IDX_DISABLE_DB(&cpr->ring, cpr->cons);
 }

 return avail;
}
