
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket {int dummy; } ;
struct mac_lomac {int dummy; } ;
struct label {int dummy; } ;
struct inpcb {int dummy; } ;


 struct mac_lomac* SLOT (struct label*) ;
 int lomac_copy_single (struct mac_lomac*,struct mac_lomac*) ;

__attribute__((used)) static void
lomac_inpcb_create(struct socket *so, struct label *solabel,
    struct inpcb *inp, struct label *inplabel)
{
 struct mac_lomac *source, *dest;

 source = SLOT(solabel);
 dest = SLOT(inplabel);

 lomac_copy_single(source, dest);
}
