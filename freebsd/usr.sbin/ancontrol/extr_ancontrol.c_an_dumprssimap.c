
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct an_req {int an_len; int an_type; } ;
struct an_ltv_rssi_map {TYPE_1__* an_entries; } ;
typedef int areq ;
struct TYPE_2__ {int an_rss_pct; int an_rss_dbm; } ;


 int AN_RID_RSSI_MAP ;
 int an_getval (char const*,struct an_req*) ;
 int printf (char*,...) ;

__attribute__((used)) static void
an_dumprssimap(const char *iface)
{
 struct an_ltv_rssi_map *rssi;
 struct an_req areq;
 int i;

 areq.an_len = sizeof(areq);
 areq.an_type = AN_RID_RSSI_MAP;

 an_getval(iface, &areq);

 rssi = (struct an_ltv_rssi_map *)&areq;

 printf("idx\tpct\t dBm\n");

 for (i = 0; i < 0xFF; i++) {




  printf("%3d\t%3d\t%4d\n", i,
   rssi->an_entries[i].an_rss_pct,
   - rssi->an_entries[i].an_rss_dbm);
 }
}
