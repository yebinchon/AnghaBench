
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct label {int dummy; } ;


 int COUNTER_INC (int ) ;
 int LABEL_INIT (struct label*,int ) ;
 int MAGIC_SYSV_MSG ;
 int sysvmsg_init_label ;

__attribute__((used)) static void
test_sysvmsg_init_label(struct label *label)
{
 LABEL_INIT(label, MAGIC_SYSV_MSG);
 COUNTER_INC(sysvmsg_init_label);
}
