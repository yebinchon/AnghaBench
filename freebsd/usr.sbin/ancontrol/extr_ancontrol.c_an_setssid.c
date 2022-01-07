
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct an_req {int an_len; int an_type; } ;
struct an_ltv_ssidlist_new {TYPE_1__* an_entry; } ;
struct an_ltv_ssid_entry {int dummy; } ;
typedef int areq ;
struct TYPE_2__ {int an_ssid; int an_len; } ;


 int AN_RID_SSIDLIST ;
 int MAX_SSIDS ;
 int an_getval (char const*,struct an_req*) ;
 int an_setval (char const*,struct an_req*) ;
 int bzero (int ,int) ;
 int errx (int,char*,int,int) ;
 int exit (int) ;
 int printf (char*,int,int) ;
 int strlcpy (int ,char*,int) ;
 int strlen (int ) ;

__attribute__((used)) static void
an_setssid(const char *iface, int act, void *arg)
{
 struct an_ltv_ssidlist_new *ssid;
 struct an_req areq;
 int max;

 areq.an_len = sizeof(areq);
 areq.an_type = AN_RID_SSIDLIST;

 an_getval(iface, &areq);
 ssid = (struct an_ltv_ssidlist_new *)&areq;

 max = (areq.an_len - 4) / sizeof(struct an_ltv_ssid_entry);
 if ( max > MAX_SSIDS ) {
  printf("Too many SSIDs only printing %d of %d\n",
      MAX_SSIDS, max);
  max = MAX_SSIDS;
 }

 if ( act > max ) {
  errx(1, "bad modifier %d: there "
      "are only %d SSID settings", act, max);
  exit(1);
 }

 bzero(ssid->an_entry[act-1].an_ssid,
     sizeof(ssid->an_entry[act-1].an_ssid));
 strlcpy(ssid->an_entry[act-1].an_ssid, (char *)arg,
     sizeof(ssid->an_entry[act-1].an_ssid));
 ssid->an_entry[act-1].an_len
     = strlen(ssid->an_entry[act-1].an_ssid);

 an_setval(iface, &areq);

 exit(0);
}
