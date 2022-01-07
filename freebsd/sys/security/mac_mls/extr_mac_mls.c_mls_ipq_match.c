
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mbuf {int dummy; } ;
struct mac_mls {int dummy; } ;
struct label {int dummy; } ;
struct ipq {int dummy; } ;


 struct mac_mls* SLOT (struct label*) ;
 int mls_equal_effective (struct mac_mls*,struct mac_mls*) ;

__attribute__((used)) static int
mls_ipq_match(struct mbuf *m, struct label *mlabel, struct ipq *q,
    struct label *qlabel)
{
 struct mac_mls *a, *b;

 a = SLOT(qlabel);
 b = SLOT(mlabel);

 return (mls_equal_effective(a, b));
}
