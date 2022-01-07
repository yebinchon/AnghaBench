
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct label {int dummy; } ;


 int COUNTER_INC (int ) ;
 int LABEL_CHECK (struct label*,int ) ;
 int MAGIC_MBUF ;
 int mbuf_copy_label ;

__attribute__((used)) static void
test_mbuf_copy_label(struct label *src, struct label *dest)
{

 LABEL_CHECK(src, MAGIC_MBUF);
 LABEL_CHECK(dest, MAGIC_MBUF);
 COUNTER_INC(mbuf_copy_label);
}
