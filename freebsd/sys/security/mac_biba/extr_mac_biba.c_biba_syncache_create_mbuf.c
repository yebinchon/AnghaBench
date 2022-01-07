
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mbuf {int dummy; } ;
struct mac_biba {int dummy; } ;
struct label {int dummy; } ;


 struct mac_biba* SLOT (struct label*) ;
 int biba_copy_effective (struct mac_biba*,struct mac_biba*) ;

__attribute__((used)) static void
biba_syncache_create_mbuf(struct label *sc_label, struct mbuf *m,
    struct label *mlabel)
{
 struct mac_biba *source, *dest;

 source = SLOT(sc_label);
 dest = SLOT(mlabel);
 biba_copy_effective(source, dest);
}
