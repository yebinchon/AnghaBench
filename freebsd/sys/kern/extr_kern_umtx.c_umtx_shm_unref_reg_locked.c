
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {size_t hash; } ;
struct umtx_shm_reg {scalar_t__ ushm_refcnt; int ushm_flags; TYPE_1__ ushm_key; } ;


 int KASSERT (int,char*) ;
 int LIST_REMOVE (struct umtx_shm_reg*,int ) ;
 int MA_OWNED ;
 int TAILQ_REMOVE (int *,struct umtx_shm_reg*,int ) ;
 int USHMF_OBJ_LINKED ;
 int USHMF_REG_LINKED ;
 int mtx_assert (int *,int ) ;
 int umtx_shm_lock ;
 int * umtx_shm_registry ;
 int ushm_obj_link ;
 int ushm_reg_link ;

__attribute__((used)) static bool
umtx_shm_unref_reg_locked(struct umtx_shm_reg *reg, bool force)
{
 bool res;

 mtx_assert(&umtx_shm_lock, MA_OWNED);
 KASSERT(reg->ushm_refcnt > 0, ("ushm_reg %p refcnt 0", reg));
 reg->ushm_refcnt--;
 res = reg->ushm_refcnt == 0;
 if (res || force) {
  if ((reg->ushm_flags & USHMF_REG_LINKED) != 0) {
   TAILQ_REMOVE(&umtx_shm_registry[reg->ushm_key.hash],
       reg, ushm_reg_link);
   reg->ushm_flags &= ~USHMF_REG_LINKED;
  }
  if ((reg->ushm_flags & USHMF_OBJ_LINKED) != 0) {
   LIST_REMOVE(reg, ushm_obj_link);
   reg->ushm_flags &= ~USHMF_OBJ_LINKED;
  }
 }
 return (res);
}
