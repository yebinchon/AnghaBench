
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* mpcth_t ;
struct TYPE_4__ {int apic_address; int product_id; int oem_id; int spec_rev; int signature; } ;


 int LAPIC_PADDR ;
 int MPCH_OEMID ;
 int MPCH_OEMID_LEN ;
 int MPCH_PRODID ;
 int MPCH_PRODID_LEN ;
 int MPCH_SIG ;
 int MP_SPECREV ;
 int memcpy (int ,int ,int) ;
 int memset (TYPE_1__*,int ,int) ;

__attribute__((used)) static void
mpt_build_mpch(mpcth_t mpch)
{

 memset(mpch, 0, sizeof(*mpch));
 memcpy(mpch->signature, MPCH_SIG, 4);
 mpch->spec_rev = MP_SPECREV;
 memcpy(mpch->oem_id, MPCH_OEMID, MPCH_OEMID_LEN);
 memcpy(mpch->product_id, MPCH_PRODID, MPCH_PRODID_LEN);
 mpch->apic_address = LAPIC_PADDR;
}
