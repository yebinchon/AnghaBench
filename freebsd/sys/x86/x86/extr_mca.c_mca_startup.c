
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int callout_reset (int *,int,int ,int *) ;
 int hz ;
 scalar_t__ mca_banks ;
 int mca_periodic_scan ;
 int mca_ticks ;
 int mca_timer ;

__attribute__((used)) static void
mca_startup(void *dummy)
{

 if (mca_banks <= 0)
  return;

 callout_reset(&mca_timer, mca_ticks * hz, mca_periodic_scan, ((void*)0));
}
