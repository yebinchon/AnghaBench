
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct label {int dummy; } ;
struct inpcb {int dummy; } ;


 int COUNTER_INC (int ) ;
 int LABEL_CHECK (struct label*,int ) ;
 int MAGIC_SYNCACHE ;
 int syncache_create ;

__attribute__((used)) static void
test_syncache_create(struct label *label, struct inpcb *inp)
{

 LABEL_CHECK(label, MAGIC_SYNCACHE);
 COUNTER_INC(syncache_create);
}
