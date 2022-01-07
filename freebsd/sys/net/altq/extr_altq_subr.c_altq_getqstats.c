
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pf_altq {int scheduler; } ;







 int ENXIO ;
 int cbq_getqstats (struct pf_altq*,void*,int*,int) ;
 int codel_getqstats (struct pf_altq*,void*,int*,int) ;
 int fairq_getqstats (struct pf_altq*,void*,int*,int) ;
 int hfsc_getqstats (struct pf_altq*,void*,int*,int) ;
 int priq_getqstats (struct pf_altq*,void*,int*,int) ;

int
altq_getqstats(struct pf_altq *a, void *ubuf, int *nbytes, int version)
{
 int error = 0;

 switch (a->scheduler) {
 default:
  error = ENXIO;
 }

 return (error);
}
