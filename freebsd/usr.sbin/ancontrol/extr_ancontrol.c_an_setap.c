
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ether_addr {int dummy; } ;
struct an_req {int an_len; int an_type; } ;
struct an_ltv_aplist {int an_ap4; int an_ap3; int an_ap2; int an_ap1; } ;
typedef int areq ;






 int AN_RID_APLIST ;
 int ETHER_ADDR_LEN ;
 int an_getval (char const*,struct an_req*) ;
 int an_setval (char const*,struct an_req*) ;
 int bcopy (struct ether_addr*,int *,int ) ;
 int bzero (int ,int ) ;
 int errx (int,char*) ;
 struct ether_addr* ether_aton (char*) ;
 int exit (int ) ;

__attribute__((used)) static void
an_setap(const char *iface, int act, void *arg)
{
 struct an_ltv_aplist *ap;
 struct an_req areq;
 struct ether_addr *addr;

 areq.an_len = sizeof(areq);
 areq.an_type = AN_RID_APLIST;

 an_getval(iface, &areq);
 ap = (struct an_ltv_aplist *)&areq;

 addr = ether_aton((char *)arg);

 if (addr == ((void*)0))
  errx(1, "badly formatted address");

 switch(act) {
 case 131:
  bzero(ap->an_ap1, ETHER_ADDR_LEN);
  bcopy(addr, &ap->an_ap1, ETHER_ADDR_LEN);
  break;
 case 130:
  bzero(ap->an_ap2, ETHER_ADDR_LEN);
  bcopy(addr, &ap->an_ap2, ETHER_ADDR_LEN);
  break;
 case 129:
  bzero(ap->an_ap3, ETHER_ADDR_LEN);
  bcopy(addr, &ap->an_ap3, ETHER_ADDR_LEN);
  break;
 case 128:
  bzero(ap->an_ap4, ETHER_ADDR_LEN);
  bcopy(addr, &ap->an_ap4, ETHER_ADDR_LEN);
  break;
 default:
  errx(1, "unknown action");
  break;
 }

 an_setval(iface, &areq);
 exit(0);
}
