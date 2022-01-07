
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mbuf {int dummy; } ;
struct label {int dummy; } ;


 int COUNTER_INC (int ) ;
 int LABEL_CHECK (struct label*,int ) ;
 int MAGIC_MBUF ;
 int MAGIC_SYNCACHE ;
 int syncache_create_mbuf ;

__attribute__((used)) static void
test_syncache_create_mbuf(struct label *sc_label, struct mbuf *m,
    struct label *mlabel)
{

 LABEL_CHECK(sc_label, MAGIC_SYNCACHE);
 LABEL_CHECK(mlabel, MAGIC_MBUF);
 COUNTER_INC(syncache_create_mbuf);
}
