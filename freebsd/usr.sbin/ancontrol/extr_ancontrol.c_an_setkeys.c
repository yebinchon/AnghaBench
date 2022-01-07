
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct an_req {int an_len; int an_type; } ;
struct an_ltv_key {int kindex; int klen; int* mac; } ;
typedef int areq ;


 int AN_RID_WEP_PERM ;
 int AN_RID_WEP_TEMP ;
 int an_setval (char const*,struct an_req*) ;
 int an_str2key (char const*,struct an_ltv_key*) ;
 int bzero (struct an_req*,int) ;
 int err (int,char*) ;
 int strlen (char const*) ;

__attribute__((used)) static void
an_setkeys(const char *iface, const char *key, int keytype)
{
 struct an_req areq;
 struct an_ltv_key *k;

 bzero(&areq, sizeof(areq));
 k = (struct an_ltv_key *)&areq;

 if (strlen(key) > 28) {
  err(1, "encryption key must be no "
      "more than 18 characters long");
 }

 an_str2key(key, k);

 k->kindex=keytype/2;

 if (!(k->klen==0 || k->klen==5 || k->klen==13)) {
  err(1, "encryption key must be 0, 5 or 13 bytes long");
 }


 k->mac[0]=1;
 k->mac[1]=0;
 k->mac[2]=0;
 k->mac[3]=0;
 k->mac[4]=0;
 k->mac[5]=0;

 switch(keytype & 1) {
 case 0:
   areq.an_len = sizeof(struct an_ltv_key);
   areq.an_type = AN_RID_WEP_PERM;
   an_setval(iface, &areq);
   break;
 case 1:
   areq.an_len = sizeof(struct an_ltv_key);
   areq.an_type = AN_RID_WEP_TEMP;
   an_setval(iface, &areq);
   break;
 }
}
