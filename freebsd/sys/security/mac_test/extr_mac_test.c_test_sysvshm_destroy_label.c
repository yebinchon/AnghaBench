
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct label {int dummy; } ;


 int COUNTER_INC (int ) ;
 int LABEL_DESTROY (struct label*,int ) ;
 int MAGIC_SYSV_SHM ;
 int sysvshm_destroy_label ;

__attribute__((used)) static void
test_sysvshm_destroy_label(struct label *label)
{

 LABEL_DESTROY(label, MAGIC_SYSV_SHM);
 COUNTER_INC(sysvshm_destroy_label);
}
