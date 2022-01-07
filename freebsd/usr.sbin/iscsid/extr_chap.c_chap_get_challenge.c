
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct chap {int chap_challenge; } ;


 char* chap_bin2hex (int ,int) ;

char *
chap_get_challenge(const struct chap *chap)
{
 char *chap_c;

 chap_c = chap_bin2hex(chap->chap_challenge,
     sizeof(chap->chap_challenge));

 return (chap_c);
}
