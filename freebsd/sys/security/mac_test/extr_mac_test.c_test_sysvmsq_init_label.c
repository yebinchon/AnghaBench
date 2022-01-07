
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct label {int dummy; } ;


 int COUNTER_INC (int ) ;
 int LABEL_INIT (struct label*,int ) ;
 int MAGIC_SYSV_MSQ ;
 int sysvmsq_init_label ;

__attribute__((used)) static void
test_sysvmsq_init_label(struct label *label)
{
 LABEL_INIT(label, MAGIC_SYSV_MSQ);
 COUNTER_INC(sysvmsq_init_label);
}
