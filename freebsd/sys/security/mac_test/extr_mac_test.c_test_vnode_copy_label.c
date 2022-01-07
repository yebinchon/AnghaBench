
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct label {int dummy; } ;


 int COUNTER_INC (int ) ;
 int LABEL_CHECK (struct label*,int ) ;
 int MAGIC_VNODE ;
 int vnode_copy_label ;

__attribute__((used)) static void
test_vnode_copy_label(struct label *src, struct label *dest)
{

 LABEL_CHECK(src, MAGIC_VNODE);
 LABEL_CHECK(dest, MAGIC_VNODE);
 COUNTER_INC(vnode_copy_label);
}
