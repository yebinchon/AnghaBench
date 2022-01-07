
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct an_req {int an_len; int an_type; } ;
struct an_ltv_key {int kindex; int* mac; scalar_t__ klen; } ;
struct an_ltv_genconfig {int an_home_product; } ;
typedef int areq ;


 int AN_HOME_NETWORK ;
 int AN_RID_GENCONFIG ;
 int AN_RID_WEP_PERM ;
 int an_getval (char const*,struct an_req*) ;
 int an_setval (char const*,struct an_req*) ;
 int atoi (char const*) ;
 int bzero (struct an_req*,int) ;

__attribute__((used)) static void
an_enable_tx_key(const char *iface, const char *arg)
{
 struct an_req areq;
 struct an_ltv_key *k;
 struct an_ltv_genconfig *config;

 bzero(&areq, sizeof(areq));


 areq.an_len = sizeof(struct an_ltv_genconfig);
 areq.an_type = AN_RID_GENCONFIG;
 an_getval(iface, &areq);
 config = (struct an_ltv_genconfig *)&areq;
 if (atoi(arg) == 4) {
  config->an_home_product |= AN_HOME_NETWORK;
 }else{
  config->an_home_product &= ~AN_HOME_NETWORK;
 }
 an_setval(iface, &areq);

 bzero(&areq, sizeof(areq));

 k = (struct an_ltv_key *)&areq;



 k->kindex=0xffff;
 k->klen=0;

 k->mac[0]=atoi(arg);
 k->mac[1]=0;
 k->mac[2]=0;
 k->mac[3]=0;
 k->mac[4]=0;
 k->mac[5]=0;

 areq.an_len = sizeof(struct an_ltv_key);
 areq.an_type = AN_RID_WEP_PERM;
 an_setval(iface, &areq);
}
