
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct label {int dummy; } ;


 int COUNTER_INC (int ) ;
 int LABEL_CHECK (struct label*,int ) ;
 int MAGIC_VNODE ;
 int vnode_internalize_label ;

__attribute__((used)) static int
test_vnode_internalize_label(struct label *label, char *element_name,
    char *element_data, int *claimed)
{

 LABEL_CHECK(label, MAGIC_VNODE);
 COUNTER_INC(vnode_internalize_label);

 return (0);
}
