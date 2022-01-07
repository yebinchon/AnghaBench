
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mbuf {int dummy; } ;
struct mac_biba {int dummy; } ;
struct label {int dummy; } ;
struct ipq {int dummy; } ;


 struct mac_biba* SLOT (struct label*) ;
 int biba_equal_effective (struct mac_biba*,struct mac_biba*) ;

__attribute__((used)) static int
biba_ipq_match(struct mbuf *m, struct label *mlabel, struct ipq *q,
    struct label *qlabel)
{
 struct mac_biba *a, *b;

 a = SLOT(qlabel);
 b = SLOT(mlabel);

 return (biba_equal_effective(a, b));
}
