
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct umtx_key {int dummy; } ;


 int umtxq_lock (struct umtx_key*) ;
 int umtxq_unbusy (struct umtx_key*) ;
 int umtxq_unlock (struct umtx_key*) ;

__attribute__((used)) static inline void
umtxq_unbusy_unlocked(struct umtx_key *key)
{

 umtxq_lock(key);
 umtxq_unbusy(key);
 umtxq_unlock(key);
}
