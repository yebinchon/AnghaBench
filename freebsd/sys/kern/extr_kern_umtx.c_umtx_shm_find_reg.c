
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct umtx_shm_reg {int dummy; } ;
struct umtx_key {int dummy; } ;


 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 struct umtx_shm_reg* umtx_shm_find_reg_locked (struct umtx_key const*) ;
 int umtx_shm_lock ;

__attribute__((used)) static struct umtx_shm_reg *
umtx_shm_find_reg(const struct umtx_key *key)
{
 struct umtx_shm_reg *reg;

 mtx_lock(&umtx_shm_lock);
 reg = umtx_shm_find_reg_locked(key);
 mtx_unlock(&umtx_shm_lock);
 return (reg);
}
