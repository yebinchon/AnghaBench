
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mbuf {int dummy; } ;
struct mac_mls {int dummy; } ;
struct label {int dummy; } ;
struct inpcb {int dummy; } ;


 int EACCES ;
 struct mac_mls* SLOT (struct label*) ;
 int mls_enabled ;
 scalar_t__ mls_equal_effective (struct mac_mls*,struct mac_mls*) ;

__attribute__((used)) static int
mls_inpcb_check_deliver(struct inpcb *inp, struct label *inplabel,
    struct mbuf *m, struct label *mlabel)
{
 struct mac_mls *p, *i;

 if (!mls_enabled)
  return (0);

 p = SLOT(mlabel);
 i = SLOT(inplabel);

 return (mls_equal_effective(p, i) ? 0 : EACCES);
}
