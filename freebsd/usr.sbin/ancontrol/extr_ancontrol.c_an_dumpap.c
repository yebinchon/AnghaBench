
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct an_req {int an_len; int an_type; } ;
struct an_ltv_aplist {int an_ap4; int an_ap3; int an_ap2; int an_ap1; } ;
typedef int areq ;


 int AN_RID_APLIST ;
 int ETHER_ADDR_LEN ;
 int an_getval (char const*,struct an_req*) ;
 int an_printhex (char*,int ) ;
 int printf (char*) ;

__attribute__((used)) static void
an_dumpap(const char *iface)
{
 struct an_ltv_aplist *ap;
 struct an_req areq;

 areq.an_len = sizeof(areq);
 areq.an_type = AN_RID_APLIST;

 an_getval(iface, &areq);

 ap = (struct an_ltv_aplist *)&areq;
 printf("Access point 1:\t\t\t");
 an_printhex((char *)&ap->an_ap1, ETHER_ADDR_LEN);
 printf("\nAccess point 2:\t\t\t");
 an_printhex((char *)&ap->an_ap2, ETHER_ADDR_LEN);
 printf("\nAccess point 3:\t\t\t");
 an_printhex((char *)&ap->an_ap3, ETHER_ADDR_LEN);
 printf("\nAccess point 4:\t\t\t");
 an_printhex((char *)&ap->an_ap4, ETHER_ADDR_LEN);
 printf("\n");

 return;
}
