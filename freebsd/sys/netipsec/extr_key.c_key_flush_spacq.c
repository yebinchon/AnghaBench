
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ time_t ;
struct secspacq {scalar_t__ created; } ;


 struct secspacq* LIST_FIRST (int *) ;
 struct secspacq* LIST_NEXT (struct secspacq*,int ) ;
 int LIST_REMOVE (struct secspacq*,int ) ;
 int M_IPSEC_SAQ ;
 int SPACQ_LOCK () ;
 int SPACQ_UNLOCK () ;
 scalar_t__ V_key_blockacq_lifetime ;
 int V_spacqtree ;
 scalar_t__ __LIST_CHAINED (struct secspacq*) ;
 int chain ;
 int free (struct secspacq*,int ) ;

__attribute__((used)) static void
key_flush_spacq(time_t now)
{
 struct secspacq *acq, *nextacq;


 SPACQ_LOCK();
 for (acq = LIST_FIRST(&V_spacqtree); acq != ((void*)0); acq = nextacq) {
  nextacq = LIST_NEXT(acq, chain);
  if (now - acq->created > V_key_blockacq_lifetime
   && __LIST_CHAINED(acq)) {
   LIST_REMOVE(acq, chain);
   free(acq, M_IPSEC_SAQ);
  }
 }
 SPACQ_UNLOCK();
}
