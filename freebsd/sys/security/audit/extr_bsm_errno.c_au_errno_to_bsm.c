
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct bsm_errno {int be_bsm_errno; } ;


 int BSM_ERRNO_UNKNOWN ;
 struct bsm_errno* bsm_lookup_errno_local (int) ;

u_char
au_errno_to_bsm(int local_errno)
{
 const struct bsm_errno *bsme;

 bsme = bsm_lookup_errno_local(local_errno);
 if (bsme == ((void*)0))
  return (BSM_ERRNO_UNKNOWN);
 return (bsme->be_bsm_errno);
}
