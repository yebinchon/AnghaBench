
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint16_t ;
struct TYPE_3__ {scalar_t__ phys_id; } ;
struct bnxt_cp_ring {scalar_t__ cons; TYPE_1__ ring; } ;


 int BNXT_CP_ENABLE_DB (TYPE_1__*) ;
 int BNXT_CP_IDX_ENABLE_DB (TYPE_1__*,scalar_t__) ;
 scalar_t__ HWRM_NA_SIGNATURE ;
 scalar_t__ UINT32_MAX ;

__attribute__((used)) static void inline
bnxt_do_enable_intr(struct bnxt_cp_ring *cpr)
{
 if (cpr->ring.phys_id != (uint16_t)HWRM_NA_SIGNATURE) {

  if (cpr->cons == UINT32_MAX)
   BNXT_CP_ENABLE_DB(&cpr->ring);
  else
   BNXT_CP_IDX_ENABLE_DB(&cpr->ring, cpr->cons);
 }
}
