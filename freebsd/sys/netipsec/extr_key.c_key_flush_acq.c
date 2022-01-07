
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ time_t ;
struct secacq {scalar_t__ created; } ;


 int ACQ_LOCK () ;
 int ACQ_UNLOCK () ;
 struct secacq* LIST_FIRST (int *) ;
 struct secacq* LIST_NEXT (struct secacq*,int ) ;
 int LIST_REMOVE (struct secacq*,int ) ;
 int M_IPSEC_SAQ ;
 int V_acqtree ;
 scalar_t__ V_key_blockacq_lifetime ;
 int addrhash ;
 int chain ;
 int free (struct secacq*,int ) ;
 int seqhash ;

__attribute__((used)) static void
key_flush_acq(time_t now)
{
 struct secacq *acq, *nextacq;


 ACQ_LOCK();
 acq = LIST_FIRST(&V_acqtree);
 while (acq != ((void*)0)) {
  nextacq = LIST_NEXT(acq, chain);
  if (now - acq->created > V_key_blockacq_lifetime) {
   LIST_REMOVE(acq, chain);
   LIST_REMOVE(acq, addrhash);
   LIST_REMOVE(acq, seqhash);
   free(acq, M_IPSEC_SAQ);
  }
  acq = nextacq;
 }
 ACQ_UNLOCK();
}
