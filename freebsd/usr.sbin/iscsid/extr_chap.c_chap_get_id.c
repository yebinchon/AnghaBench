
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct chap {int chap_id; } ;


 int asprintf (char**,char*,int ) ;
 int log_err (int,char*) ;

char *
chap_get_id(const struct chap *chap)
{
 char *chap_i;
 int ret;

 ret = asprintf(&chap_i, "%d", chap->chap_id);
 if (ret < 0)
  log_err(1, "asprintf");

 return (chap_i);
}
