
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sbuf {int dummy; } ;
struct label {int dummy; } ;


 int COUNTER_INC (int ) ;
 int LABEL_CHECK (struct label*,int ) ;
 int MAGIC_IFNET ;
 int ifnet_externalize_label ;

__attribute__((used)) static int
test_ifnet_externalize_label(struct label *label, char *element_name,
    struct sbuf *sb, int *claimed)
{

 LABEL_CHECK(label, MAGIC_IFNET);
 COUNTER_INC(ifnet_externalize_label);

 return (0);
}
