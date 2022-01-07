
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ena_adapter {int pdev; } ;
typedef int * devclass_t ;


 int ENA_ALERT ;
 int ENA_FLAG_CLEAR_ATOMIC (int ,struct ena_adapter*) ;
 int ENA_FLAG_RSS_ACTIVE ;
 int ENA_FLAG_SET_ATOMIC (int ,struct ena_adapter*) ;
 int * devclass_find (char*) ;
 int devclass_get_maxunit (int *) ;
 struct ena_adapter* devclass_get_softc (int *,int) ;
 int device_printf (int ,char*) ;
 int ena_rss_init_default (struct ena_adapter*) ;
 int ena_trace (int ,char*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void
ena_rss_init_default_deferred(void *arg)
{
 struct ena_adapter *adapter;
 devclass_t dc;
 int max;
 int rc;

 dc = devclass_find("ena");
 if (unlikely(dc == ((void*)0))) {
  ena_trace(ENA_ALERT, "No devclass ena\n");
  return;
 }

 max = devclass_get_maxunit(dc);
 while (max-- >= 0) {
  adapter = devclass_get_softc(dc, max);
  if (adapter != ((void*)0)) {
   rc = ena_rss_init_default(adapter);
   ENA_FLAG_SET_ATOMIC(ENA_FLAG_RSS_ACTIVE, adapter);
   if (unlikely(rc != 0)) {
    device_printf(adapter->pdev,
        "WARNING: RSS was not properly initialized,"
        " it will affect bandwidth\n");
    ENA_FLAG_CLEAR_ATOMIC(ENA_FLAG_RSS_ACTIVE, adapter);
   }
  }
 }
}
