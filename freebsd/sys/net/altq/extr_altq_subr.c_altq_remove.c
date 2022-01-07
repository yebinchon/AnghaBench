
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pf_altq {scalar_t__* qname; int scheduler; } ;







 int ENXIO ;
 int altq_remove_queue (struct pf_altq*) ;
 int cbq_remove_altq (struct pf_altq*) ;
 int codel_remove_altq (struct pf_altq*) ;
 int fairq_remove_altq (struct pf_altq*) ;
 int hfsc_remove_altq (struct pf_altq*) ;
 int priq_remove_altq (struct pf_altq*) ;

int
altq_remove(struct pf_altq *a)
{
 int error = 0;

 if (a->qname[0] != 0)
  return (altq_remove_queue(a));

 switch (a->scheduler) {
 default:
  error = ENXIO;
 }

 return (error);
}
