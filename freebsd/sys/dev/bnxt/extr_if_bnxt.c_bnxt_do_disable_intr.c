
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint16_t ;
struct TYPE_2__ {scalar_t__ phys_id; } ;
struct bnxt_cp_ring {TYPE_1__ ring; } ;


 int BNXT_CP_DISABLE_DB (TYPE_1__*) ;
 scalar_t__ HWRM_NA_SIGNATURE ;

__attribute__((used)) static void inline
bnxt_do_disable_intr(struct bnxt_cp_ring *cpr)
{
 if (cpr->ring.phys_id != (uint16_t)HWRM_NA_SIGNATURE)
  BNXT_CP_DISABLE_DB(&cpr->ring);
}
