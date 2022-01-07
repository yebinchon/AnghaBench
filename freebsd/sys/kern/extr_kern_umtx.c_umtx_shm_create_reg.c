
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct umtx_shm_reg {int ushm_refcnt; int ushm_flags; int ushm_obj; int ushm_cred; int ushm_key; } ;
struct TYPE_3__ {int object; } ;
struct TYPE_4__ {TYPE_1__ shared; } ;
struct umtx_key {size_t hash; TYPE_2__ info; } ;
struct ucred {int cr_ruidinfo; } ;
struct thread {struct ucred* td_ucred; } ;


 int ENOMEM ;
 int LIST_INSERT_HEAD (int ,struct umtx_shm_reg*,int ) ;
 int M_WAITOK ;
 int M_ZERO ;
 int O_RDWR ;
 int PAGE_SIZE ;
 int RLIMIT_UMTXP ;
 int TAILQ_INSERT_TAIL (int *,struct umtx_shm_reg*,int ) ;
 int USHMF_OBJ_LINKED ;
 int USHMF_REG_LINKED ;
 int USHM_OBJ_UMTX (int ) ;
 int bcopy (struct umtx_key const*,int *,int) ;
 int chgumtxcnt (int ,int,int ) ;
 int crhold (struct ucred*) ;
 int lim_cur (struct thread*,int ) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int shm_alloc (struct ucred*,int ) ;
 int shm_dotruncate (int ,int ) ;
 struct umtx_shm_reg* uma_zalloc (int ,int) ;
 struct umtx_shm_reg* umtx_shm_find_reg (struct umtx_key const*) ;
 struct umtx_shm_reg* umtx_shm_find_reg_locked (struct umtx_key const*) ;
 int umtx_shm_free_reg (struct umtx_shm_reg*) ;
 int umtx_shm_lock ;
 int umtx_shm_reg_zone ;
 int * umtx_shm_registry ;
 int ushm_obj_link ;
 int ushm_reg_link ;

__attribute__((used)) static int
umtx_shm_create_reg(struct thread *td, const struct umtx_key *key,
    struct umtx_shm_reg **res)
{
 struct umtx_shm_reg *reg, *reg1;
 struct ucred *cred;
 int error;

 reg = umtx_shm_find_reg(key);
 if (reg != ((void*)0)) {
  *res = reg;
  return (0);
 }
 cred = td->td_ucred;
 if (!chgumtxcnt(cred->cr_ruidinfo, 1, lim_cur(td, RLIMIT_UMTXP)))
  return (ENOMEM);
 reg = uma_zalloc(umtx_shm_reg_zone, M_WAITOK | M_ZERO);
 reg->ushm_refcnt = 1;
 bcopy(key, &reg->ushm_key, sizeof(*key));
 reg->ushm_obj = shm_alloc(td->td_ucred, O_RDWR);
 reg->ushm_cred = crhold(cred);
 error = shm_dotruncate(reg->ushm_obj, PAGE_SIZE);
 if (error != 0) {
  umtx_shm_free_reg(reg);
  return (error);
 }
 mtx_lock(&umtx_shm_lock);
 reg1 = umtx_shm_find_reg_locked(key);
 if (reg1 != ((void*)0)) {
  mtx_unlock(&umtx_shm_lock);
  umtx_shm_free_reg(reg);
  *res = reg1;
  return (0);
 }
 reg->ushm_refcnt++;
 TAILQ_INSERT_TAIL(&umtx_shm_registry[key->hash], reg, ushm_reg_link);
 LIST_INSERT_HEAD(USHM_OBJ_UMTX(key->info.shared.object), reg,
     ushm_obj_link);
 reg->ushm_flags = USHMF_REG_LINKED | USHMF_OBJ_LINKED;
 mtx_unlock(&umtx_shm_lock);
 *res = reg;
 return (0);
}
