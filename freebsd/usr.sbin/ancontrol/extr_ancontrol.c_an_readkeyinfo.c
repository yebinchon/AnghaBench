
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct an_req {int an_len; int an_type; } ;
struct an_ltv_key {int kindex; int klen; int* mac; } ;
struct an_ltv_genconfig {int an_home_product; } ;
typedef int areq ;


 int AN_HOME_NETWORK ;
 int AN_RID_ACTUALCFG ;
 int AN_RID_WEP_PERM ;
 int AN_RID_WEP_TEMP ;
 int an_getval (char const*,struct an_req*) ;
 int bzero (struct an_req*,int) ;
 int printf (char*,...) ;

__attribute__((used)) static void
an_readkeyinfo(const char *iface)
{
 struct an_req areq;
 struct an_ltv_genconfig *cfg;
 struct an_ltv_key *k;
 int i;
 int home;

 areq.an_len = sizeof(areq);
 areq.an_type = AN_RID_ACTUALCFG;
 an_getval(iface, &areq);
 cfg = (struct an_ltv_genconfig *)&areq;
 if (cfg->an_home_product & AN_HOME_NETWORK)
  home = 1;
 else
  home = 0;

 bzero(&areq, sizeof(areq));
 k = (struct an_ltv_key *)&areq;

 printf("WEP Key status:\n");
 areq.an_type = AN_RID_WEP_TEMP;
 for(i=0; i<5; i++) {
  areq.an_len = sizeof(struct an_ltv_key);
  an_getval(iface, &areq);
         if (k->kindex == 0xffff)
   break;
  switch (k->klen) {
  case 0:
   printf("\tKey %u is unset\n", k->kindex);
   break;
  case 5:
   printf("\tKey %u is set  40 bits\n", k->kindex);
   break;
  case 13:
   printf("\tKey %u is set 128 bits\n", k->kindex);
   break;
  default:
   printf("\tWEP Key %d has an unknown size %u\n",
       i, k->klen);
  }

  areq.an_type = AN_RID_WEP_PERM;
 }
 k->kindex = 0xffff;
 areq.an_len = sizeof(struct an_ltv_key);
       an_getval(iface, &areq);
 printf("\tThe active transmit key is %d\n", 4 * home + k->mac[0]);

 return;
}
