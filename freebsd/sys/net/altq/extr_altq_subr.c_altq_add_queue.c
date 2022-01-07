
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pf_altq {int scheduler; } ;






 int ENXIO ;
 int cbq_add_queue (struct pf_altq*) ;
 int fairq_add_queue (struct pf_altq*) ;
 int hfsc_add_queue (struct pf_altq*) ;
 int priq_add_queue (struct pf_altq*) ;

int
altq_add_queue(struct pf_altq *a)
{
 int error = 0;

 switch (a->scheduler) {
 default:
  error = ENXIO;
 }

 return (error);
}
