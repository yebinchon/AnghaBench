
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pv_entry_t ;


 int M_NOWAIT ;
 int pagedaemon_wakeup (int ) ;
 scalar_t__ pv_entry_count ;
 scalar_t__ pv_entry_high_water ;
 int pvzone ;
 int uma_zalloc (int ,int ) ;

pv_entry_t
pv_alloc(void)
{
 pv_entry_t pv;

 pv_entry_count++;
 if (pv_entry_count > pv_entry_high_water)
  pagedaemon_wakeup(0);
 pv = uma_zalloc(pvzone, M_NOWAIT);

 return (pv);
}
