
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct chap {int chap_id; int * chap_challenge; } ;


 int arc4random_buf (int *,int) ;
 struct chap* calloc (int,int) ;
 int log_err (int,char*) ;

struct chap *
chap_new(void)
{
 struct chap *chap;

 chap = calloc(1, sizeof(*chap));
 if (chap == ((void*)0))
  log_err(1, "calloc");




 arc4random_buf(chap->chap_challenge, sizeof(chap->chap_challenge));
 arc4random_buf(&chap->chap_id, sizeof(chap->chap_id));

 return (chap);
}
