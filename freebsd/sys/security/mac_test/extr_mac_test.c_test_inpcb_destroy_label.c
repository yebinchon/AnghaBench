
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct label {int dummy; } ;


 int COUNTER_INC (int ) ;
 int LABEL_DESTROY (struct label*,int ) ;
 int MAGIC_INPCB ;
 int inpcb_destroy_label ;

__attribute__((used)) static void
test_inpcb_destroy_label(struct label *label)
{

 LABEL_DESTROY(label, MAGIC_INPCB);
 COUNTER_INC(inpcb_destroy_label);
}
