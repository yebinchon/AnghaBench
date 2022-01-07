
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_char ;
struct bsm_errno {scalar_t__ be_bsm_errno; } ;


 struct bsm_errno const* bsm_errnos ;
 int nitems (struct bsm_errno const*) ;

__attribute__((used)) static const struct bsm_errno *
bsm_lookup_errno_bsm(u_char bsm_errno)
{
 int i;

 for (i = 0; i < nitems(bsm_errnos); i++) {
  if (bsm_errnos[i].be_bsm_errno == bsm_errno)
   return (&bsm_errnos[i]);
 }
 return (((void*)0));
}
