
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct an_req {int an_len; int an_type; } ;
struct an_ltv_ssidlist_new {TYPE_1__* an_entry; } ;
struct an_ltv_ssid_entry {int dummy; } ;
typedef int areq ;
struct TYPE_2__ {char* an_len; int an_ssid; } ;


 int AN_RID_SSIDLIST ;
 int MAX_SSIDS ;
 int an_getval (char const*,struct an_req*) ;
 int printf (char*,int,...) ;

__attribute__((used)) static void
an_dumpssid(const char *iface)
{
 struct an_ltv_ssidlist_new *ssid;
 struct an_req areq;
 int i, max;

 areq.an_len = sizeof(areq);
 areq.an_type = AN_RID_SSIDLIST;

 an_getval(iface, &areq);

 max = (areq.an_len - 4) / sizeof(struct an_ltv_ssid_entry);
 if ( max > MAX_SSIDS ) {
  printf("Too many SSIDs only printing %d of %d\n",
      MAX_SSIDS, max);
  max = MAX_SSIDS;
 }
 ssid = (struct an_ltv_ssidlist_new *)&areq;
 for (i = 0; i < max; i++)
  printf("SSID %2d:\t\t\t[ %.*s ]\n", i + 1,
      ssid->an_entry[i].an_len,
      ssid->an_entry[i].an_ssid);

 return;
}
