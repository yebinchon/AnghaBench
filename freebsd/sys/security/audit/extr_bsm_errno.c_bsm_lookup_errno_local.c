
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bsm_errno {int be_local_errno; } ;


 struct bsm_errno const* bsm_errnos ;
 int nitems (struct bsm_errno const*) ;

__attribute__((used)) static const struct bsm_errno *
bsm_lookup_errno_local(int local_errno)
{
 int i;

 for (i = 0; i < nitems(bsm_errnos); i++) {
  if (bsm_errnos[i].be_local_errno == local_errno)
   return (&bsm_errnos[i]);
 }
 return (((void*)0));
}
