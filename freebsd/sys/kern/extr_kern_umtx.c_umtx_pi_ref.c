
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct umtx_pi {int pi_refcount; int pi_key; } ;


 int UMTXQ_LOCKED_ASSERT (int ) ;
 int umtxq_getchain (int *) ;

__attribute__((used)) static void
umtx_pi_ref(struct umtx_pi *pi)
{

 UMTXQ_LOCKED_ASSERT(umtxq_getchain(&pi->pi_key));
 pi->pi_refcount++;
}
