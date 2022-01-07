
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct umtxq_chain {int uc_pi_list; } ;
struct umtx_pi {int pi_key; } ;


 int TAILQ_INSERT_TAIL (int *,struct umtx_pi*,int ) ;
 int UMTXQ_LOCKED_ASSERT (struct umtxq_chain*) ;
 int pi_hashlink ;
 struct umtxq_chain* umtxq_getchain (int *) ;

__attribute__((used)) static inline void
umtx_pi_insert(struct umtx_pi *pi)
{
 struct umtxq_chain *uc;

 uc = umtxq_getchain(&pi->pi_key);
 UMTXQ_LOCKED_ASSERT(uc);
 TAILQ_INSERT_TAIL(&uc->uc_pi_list, pi, pi_hashlink);
}
