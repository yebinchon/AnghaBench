
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mbuf {int dummy; } ;
struct mac_biba {int dummy; } ;
struct label {int dummy; } ;
struct ip6q {int dummy; } ;


 struct mac_biba* SLOT (struct label*) ;
 int biba_equal_effective (struct mac_biba*,struct mac_biba*) ;

__attribute__((used)) static int
biba_ip6q_match(struct mbuf *m, struct label *mlabel, struct ip6q *q6,
    struct label *q6label)
{
 struct mac_biba *a, *b;

 a = SLOT(q6label);
 b = SLOT(mlabel);

 return (biba_equal_effective(a, b));
}
