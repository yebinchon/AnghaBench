
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct label {int dummy; } ;


 int COUNTER_INC (int ) ;
 int LABEL_CHECK (struct label*,int ) ;
 int MAGIC_SYSV_SHM ;
 int sysvshm_cleanup ;

__attribute__((used)) static void
test_sysvshm_cleanup(struct label *shmlabel)
{

 LABEL_CHECK(shmlabel, MAGIC_SYSV_SHM);
 COUNTER_INC(sysvshm_cleanup);
}
