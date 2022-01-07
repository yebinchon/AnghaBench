
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rchap {int rchap_secret; } ;


 struct rchap* calloc (int,int) ;
 int checked_strdup (char const*) ;
 int log_err (int,char*) ;

struct rchap *
rchap_new(const char *secret)
{
 struct rchap *rchap;

 rchap = calloc(1, sizeof(*rchap));
 if (rchap == ((void*)0))
  log_err(1, "calloc");

 rchap->rchap_secret = checked_strdup(secret);

 return (rchap);
}
