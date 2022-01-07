
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct label {int dummy; } ;


 int COUNTER_INC (int ) ;
 int LABEL_DESTROY (struct label*,int ) ;
 int MAGIC_BPF ;
 int bpfdesc_destroy_label ;

__attribute__((used)) static void
test_bpfdesc_destroy_label(struct label *label)
{

 LABEL_DESTROY(label, MAGIC_BPF);
 COUNTER_INC(bpfdesc_destroy_label);
}
