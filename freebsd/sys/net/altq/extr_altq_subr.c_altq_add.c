
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pf_altq {scalar_t__* qname; int scheduler; } ;
struct ifnet {int dummy; } ;







 int ENXIO ;
 int altq_add_queue (struct pf_altq*) ;
 int cbq_add_altq (struct ifnet*,struct pf_altq*) ;
 int codel_add_altq (struct ifnet*,struct pf_altq*) ;
 int fairq_add_altq (struct ifnet*,struct pf_altq*) ;
 int hfsc_add_altq (struct ifnet*,struct pf_altq*) ;
 int init_machclk () ;
 scalar_t__ machclk_freq ;
 int panic (char*) ;
 int priq_add_altq (struct ifnet*,struct pf_altq*) ;

int
altq_add(struct ifnet *ifp, struct pf_altq *a)
{
 int error = 0;

 if (a->qname[0] != 0)
  return (altq_add_queue(a));

 if (machclk_freq == 0)
  init_machclk();
 if (machclk_freq == 0)
  panic("altq_add: no cpu clock");

 switch (a->scheduler) {
 default:
  error = ENXIO;
 }

 return (error);
}
