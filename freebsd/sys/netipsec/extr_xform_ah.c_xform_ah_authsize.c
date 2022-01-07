
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct auth_hash {int type; int hashsize; } ;


 int AH_HMAC_HASHLEN ;







int
xform_ah_authsize(const struct auth_hash *esph)
{
 int alen;

 if (esph == ((void*)0))
  return 0;

 switch (esph->type) {
 case 130:
 case 129:
 case 128:
  alen = esph->hashsize / 2;
  break;

 case 133:
 case 132:
 case 131:
  alen = esph->hashsize;
  break;

 default:
  alen = AH_HMAC_HASHLEN;
  break;
 }

 return alen;
}
