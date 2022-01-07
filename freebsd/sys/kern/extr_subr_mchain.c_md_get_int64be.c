
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mdchain {int dummy; } ;
typedef int int64_t ;


 int be64toh (int ) ;
 int md_get_int64 (struct mdchain*,int *) ;

int
md_get_int64be(struct mdchain *mdp, int64_t *x)
{
 int64_t v;
 int error;

 error = md_get_int64(mdp, &v);
 if (x != ((void*)0))
  *x = be64toh(v);
 return (error);
}
