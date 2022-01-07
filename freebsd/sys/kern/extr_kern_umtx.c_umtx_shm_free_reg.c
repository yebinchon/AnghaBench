
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct umtx_shm_reg {int ushm_obj; TYPE_1__* ushm_cred; } ;
struct TYPE_2__ {int cr_ruidinfo; } ;


 int chgumtxcnt (int ,int,int ) ;
 int crfree (TYPE_1__*) ;
 int shm_drop (int ) ;
 int uma_zfree (int ,struct umtx_shm_reg*) ;
 int umtx_shm_reg_zone ;

__attribute__((used)) static void
umtx_shm_free_reg(struct umtx_shm_reg *reg)
{

 chgumtxcnt(reg->ushm_cred->cr_ruidinfo, -1, 0);
 crfree(reg->ushm_cred);
 shm_drop(reg->ushm_obj);
 uma_zfree(umtx_shm_reg_zone, reg);
}
