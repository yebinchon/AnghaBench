
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct umtxq_chain {int uc_lock; } ;
struct umtx_key {int dummy; } ;


 int mtx_unlock (int *) ;
 struct umtxq_chain* umtxq_getchain (struct umtx_key*) ;

__attribute__((used)) static inline void
umtxq_unlock(struct umtx_key *key)
{
 struct umtxq_chain *uc;

 uc = umtxq_getchain(key);
 mtx_unlock(&uc->uc_lock);
}
