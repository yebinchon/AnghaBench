
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct label {int dummy; } ;


 int COUNTER_INC (int ) ;
 int LABEL_DESTROY (struct label*,int ) ;
 int MAGIC_MBUF ;
 int mbuf_destroy_label ;

__attribute__((used)) static void
test_mbuf_destroy_label(struct label *label)
{






 if (label == ((void*)0))
  return;

 LABEL_DESTROY(label, MAGIC_MBUF);
 COUNTER_INC(mbuf_destroy_label);
}
