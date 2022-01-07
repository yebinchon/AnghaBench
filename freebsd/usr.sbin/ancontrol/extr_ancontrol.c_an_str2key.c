
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct an_ltv_key {int klen; int * key; } ;


 int an_hex2int (char const) ;
 int bcopy (char const*,int *,int) ;
 int errx (int,char*) ;
 int strlen (char const*) ;

__attribute__((used)) static void
an_str2key(const char *s, struct an_ltv_key *k)
{
 int n, i;
 char *p;


 if (s[0] == '0' && (s[1] == 'x' || s[1] == 'X')) {

  n = 0;
  p = (char *)&k->key[0];
  for (i = 2; s[i] != '\0' && s[i + 1] != '\0'; i+= 2) {
   *p++ = (an_hex2int(s[i]) << 4) + an_hex2int(s[i + 1]);
   n++;
  }
  if (s[i] != '\0')
   errx(1, "hex strings must be of even length");
  k->klen = n;
 } else {

  bcopy(s, k->key, strlen(s));
  k->klen = strlen(s);
 }

 return;
}
