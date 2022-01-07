
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pf_altq {int scheduler; } ;
 int ENXIO ;
 int cbq_pfattach (struct pf_altq*) ;
 int codel_pfattach (struct pf_altq*) ;
 int fairq_pfattach (struct pf_altq*) ;
 int hfsc_pfattach (struct pf_altq*) ;
 int priq_pfattach (struct pf_altq*) ;

int
altq_pfattach(struct pf_altq *a)
{
 int error = 0;

 switch (a->scheduler) {
 case 129:
  break;
 default:
  error = ENXIO;
 }

 return (error);
}
