
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uma_zone_t ;





 int panic (char*,int) ;
 int pcpu_cache_drain_safe (int ) ;
 int zone_drain (int ) ;
 int zone_trim (int ) ;

void
uma_zone_reclaim(uma_zone_t zone, int req)
{

 switch (req) {
 case 128:
  zone_trim(zone);
  break;
 case 130:
  zone_drain(zone);
  break;
 case 129:
  pcpu_cache_drain_safe(zone);
  zone_drain(zone);
  break;
 default:
  panic("unhandled reclamation request %d", req);
 }
}
