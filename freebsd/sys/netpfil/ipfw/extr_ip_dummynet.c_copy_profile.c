
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dn_profile {int dummy; } ;
struct dn_id {int len; } ;
struct copy_args {int end; int* start; } ;


 int D (char*,int,int) ;
 int ED_MAX_SAMPLES_NO ;
 int memcpy (int,struct dn_profile*,int) ;

__attribute__((used)) static int
copy_profile(struct copy_args *a, struct dn_profile *p)
{
 int have = a->end - *a->start;

 int profile_len = sizeof(struct dn_profile) -
  ED_MAX_SAMPLES_NO*sizeof(int);

 if (p == ((void*)0))
  return 0;
 if (have < profile_len) {
  D("error have %d need %d", have, profile_len);
  return 1;
 }
 memcpy(*a->start, p, profile_len);
 ((struct dn_id *)(*a->start))->len = profile_len;
 *a->start += profile_len;
 return 0;
}
